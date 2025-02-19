//+------------------------------------------------------------------+
//|                                                Restu_Kaioh.mq5  |
//|                        TopiMaso Studio                          |
//|                        Créé par : Don-Gio                       |
//|                        Description: Scalping sur XAU/USD        |
//+------------------------------------------------------------------+
#property indicator_separate_window
#property indicator_buffers 2
#property indicator_color1 Blue
#property indicator_color2 Red

// Paramètres de l'indicateur
input int SMA_Period = 20;            // Période de la Moyenne Mobile Simple (SMA)
input int Stoch_Period = 14;          // Période de l'oscillateur Stochastique
input int Stoch_Slowing = 3;          // Ralentissement de l'oscillateur Stochastique
input int Stoch_Smooth = 3;           // Lissage de l'oscillateur Stochastique
input int Stoch_Overbought = 80;      // Niveau de surachat pour Stochastique
input int Stoch_Oversold = 20;        // Niveau de survente pour Stochastique

// Buffers de l'indicateur
double StochMainBuffer[];
double StochSignalBuffer[];

//+------------------------------------------------------------------+
//| Fonction d'initialisation de l'indicateur                       |
//+------------------------------------------------------------------+
int OnInit()
  {
   // Définir les buffers de l'indicateur
   SetIndexBuffer(0, StochMainBuffer);
   SetIndexBuffer(1, StochSignalBuffer);

   // Nom des buffers
   IndicatorShortName("Restu Kaioh - Scalping XAU/USD");

   // Définir le style des lignes
   SetIndexStyle(0, DRAW_LINE, STYLE_SOLID, 2);
   SetIndexStyle(1, DRAW_LINE, STYLE_DOT, 2);

   // Retourner le résultat
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Fonction de calcul de l'indicateur                               |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total, const int prev_calculated, const datetime &time[],
                const double &open[], const double &high[], const double &low[], const double &close[],
                const long &tick_volume[], const long &volume[], const int &spread[])
  {
   int begin = rates_total - prev_calculated;
   if (begin > rates_total - Stoch_Period)
      begin = rates_total - Stoch_Period;

   // Calcul de la Moyenne Mobile Simple (SMA)
   double SMA[];
   ArraySetAsSeries(SMA, true);
   int sma_calculated = iMA(NULL, 0, SMA_Period, 0, MODE_SMA, PRICE_CLOSE, SMA);

   // Calcul de l'oscillateur stochastique
   int stoch_calculated = iStochastic(NULL, 0, Stoch_Period, Stoch_Slowing, Stoch_Smooth, MODE_SMA, 0, StochMainBuffer, StochSignalBuffer);

   // Vérification si les données sont calculées
   if (stoch_calculated < rates_total)
      return (0);

   // Tracer les niveaux de surachat/survente sur l'oscillateur stochastique
   for (int i = begin; i < rates_total; i++)
     {
      // Si l'oscillateur est au-dessus du niveau de surachat, signal de vente
      if (StochMainBuffer[i] > Stoch_Overbought)
        {
         // Signal de vente
         StochSignalBuffer[i] = 1.0;
        }
      // Si l'oscillateur est en dessous du niveau de survente, signal d'achat
      else if (StochMainBuffer[i] < Stoch_Oversold)
        {
         // Signal d'achat
         StochSignalBuffer[i] = -1.0;
        }
      else
        {
         StochSignalBuffer[i] = 0.0;
        }
     }
   // Retourner le résultat
   return (rates_total);
  }
//+------------------------------------------------------------------+