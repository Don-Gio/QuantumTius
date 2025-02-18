//+------------------------------------------------------------------+
//|                                                       yujiro.mq5 |
//|                        Created by Don GIO                        |
//+------------------------------------------------------------------+
#property strict

input int MovingAveragePeriod = 14; // Période de la moyenne mobile
input int RSIPeriod = 14;           // Période de l'indicateur RSI
input double LotSize = 0.1;         // Taille de la position
input double TakeProfit = 10;       // Take Profit en pips
input double StopLoss = 10;         // Stop Loss en pips

int handleMA;
int handleRSI;

double maPrev, maCurrent, rsiCurrent;

//+------------------------------------------------------------------+
//| Initialization function                                          |
//+------------------------------------------------------------------+
int OnInit()
  {
   handleMA = iMA(Symbol(), 0, MovingAveragePeriod, 0, MODE_SMA, PRICE_CLOSE);
   handleRSI = iRSI(Symbol(), 0, RSIPeriod, PRICE_CLOSE);
   
   if (handleMA == INVALID_HANDLE || handleRSI == INVALID_HANDLE)
   {
      Print("Erreur lors de la création des handles pour les indicateurs.");
      return INIT_FAILED;
   }
   
   return INIT_SUCCEEDED;
  }

//+------------------------------------------------------------------+
//| Main function - called on every tick                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   maPrev = CopyBuffer(handleMA, 0, 1, 1)[0];
   maCurrent = CopyBuffer(handleMA, 0, 0, 1)[0];
   rsiCurrent = CopyBuffer(handleRSI, 0, 0, 1)[0];
   
   // Condition d'achat
   if (maCurrent > maPrev && rsiCurrent < 30)
     {
      if (PositionSelect(Symbol()) == false)
        {
         double price = Ask;
         double sl = price - StopLoss * _Point;
         double tp = price + TakeProfit * _Point;
         OrderSend(Symbol(), OP_BUY, LotSize, price, 3, sl, tp, "Scalper Bot", 0, 0, clrGreen);
        }
     }

   // Condition de vente
   if (maCurrent < maPrev && rsiCurrent > 70)
     {
      if (PositionSelect(Symbol()) == false)
        {
         double price = Bid;
         double sl = price + StopLoss * _Point;
         double tp = price - TakeProfit * _Point;
         OrderSend(Symbol(), OP_SELL, LotSize, price, 3, sl, tp, "Scalper Bot", 0, 0, clrRed);
        }
     }
  }

//+------------------------------------------------------------------+
