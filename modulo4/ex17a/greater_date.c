unsigned int greater_date(unsigned int date1, unsigned int date2){

       unsigned int year1 = (date1 & 0xFFFF0000) >> 16;
       
       unsigned int year2 = (date2 & 0xFFFF0000) >> 16;


       if( year1 > year2){
       
		return date1;
      
      }else if (year2 > year1){
      
		return date2;
      }

       unsigned int month1 = (date1 & 0x00FFFF00) >> 8;
       
       unsigned int month2 = (date2 & 0x00FFFF00) >> 8;


       if( month1 > month2){
       
		return date1;
      
      }else if (month2 > month1){
      
		return date2;
      }
      
       unsigned int day1 = (date1 & 0x000000FF);
        
       unsigned int day2 = (date2 & 0x000000FF);

       if(day1 > day2){
       
		return date1;
      
      }else if (day2 > day1){
      
		return date2;
      }
      
      return date1;

}
