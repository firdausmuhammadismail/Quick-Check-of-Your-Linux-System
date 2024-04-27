#!/bin/bash
#buat secara otomatis info tentang cpu di folder /proc
mkdir informasi_perangkat
touch informasi_perangkat/informasi_cpu.txt
touch informasi_perangkat/informasi_memori.txt
touch informasi_perangkat/informasi_login.txt
cat /proc/cpuinfo > informasi_perangkat/informasi_cpu.txt
cat /proc/meminfo > informasi_perangkat/informasi_memori.txt
cat /etc/passwd > informasi_perangkat/informasi_login.txt
clear
apt-get install zenity -y > /dev/null 2>&1
zenity --info --text='pastikan anda sudah terhubung ke internet' --title='Mulai'  
#buat fungsi untuk pilihan bahasa indonesia
bahasa_indonesia_1(){
	echo -e " ";
	echo -e "\033[1;33m\t[1]. \033[0m \033[1;36mNama Kernel\033[0m \t\t \033[1;33m\t[11].\033[0m \033[1;36mBrowser Bawaan\033[0m";
	echo -e "\033[1;33m\t[2]. \033[0m \033[1;36mNama Host\033[0m \t\t \033[1;33m\t[12].\033[0m \033[1;36mAlamat Local Host\033[0m";
	echo -e "\033[1;33m\t[3]. \033[0m \033[1;36mRilis Kernel\033[0m \t\t \033[1;33m\t[13].\033[0m \033[1;36mIp Private\033[0m";
	echo -e "\033[1;33m\t[4]. \033[0m \033[1;36mVersi Kernel\033[0m \t\t \033[1;33m\t[14].\033[0m \033[1;36mWaktu Yang Sudah Dipakai Semenjak Sistem Reboot\033[0m";
	echo -e "\033[1;33m\t[5]. \033[0m \033[1;36mProcessor\033[0m \t\t \033[1;33m\t[15].\033[0m \033[1;36mPemakaian Memori\033[0m";
	echo -e "\033[1;33m\t[6]. \033[0m \033[1;36mVersi Mesin\033[0m \t\t \033[1;33m\t[16].\033[0m \033[1;36mId\033[0m";
	echo -e "\033[1;33m\t[7]. \033[0m \033[1;36mSistem Operasi\033[0m \t\t \033[1;33m\t[17].\033[0m \033[1;36mDetail Lokasi\033[0m";
	echo -e "\033[1;33m\t[8]. \033[0m \033[1;36mAlamat Ip Publik\033[0m \t\t \033[1;33m\t[18].\033[0m \033[1;36mId Mesin\033[0m";		
	echo -e "\033[1;33m\t[9]. \033[0m \033[1;36mLokasi Path Saat Ini\033[0m";
	echo -e "\033[1;33m\t[10].\033[0m \033[1;36mUser Yang Sedang Dipakai\033[0m";
}

#buat fungsi untuk pilihan bahasa indonesia
bahasa_inggris_1(){
	echo -e " ";
	echo -e "\033[1;33m\t[1]. \033[0m \033[1;36mKernel Name\033[0m \t\t \033[1;33m\t[11].\033[0m \033[1;36mDefault Browser\033[0m";
	echo -e "\033[1;33m\t[2]. \033[0m \033[1;36mHostname\033[0m \t\t \033[1;33m\t\t[12].\033[0m \033[1;36mLocalhost Address\033[0m";
	echo -e "\033[1;33m\t[3]. \033[0m \033[1;36mKernel Release\033[0m \t\t \033[1;33m\t[13].\033[0m \033[1;36mPrivate Ip\033[0m";
	echo -e "\033[1;33m\t[4]. \033[0m \033[1;36mKernel Version\033[0m \t\t \033[1;33m\t[14].\033[0m \033[1;36mTime Elapsed Since System Reboot\033[0m";
	echo -e "\033[1;33m\t[5]. \033[0m \033[1;36mProcessor\033[0m \t\t \033[1;33m\t[15].\033[0m \033[1;36mMemory Usage\033[0m";
	echo -e "\033[1;33m\t[6]. \033[0m \033[1;36mMachine Version\033[0m \t\t \033[1;33m\t[16].\033[0m \033[1;36mId\033[0m";
	echo -e "\033[1;33m\t[7]. \033[0m \033[1;36mOperating System\033[0m \t\t \033[1;33m\t[17].\033[0m \033[1;36mLocation Details\033[0m";
	echo -e "\033[1;33m\t[8]. \033[0m \033[1;36mPublic Ip Address\033[0m \t \033[1;33m\t[18].\033[0m \033[1;36mMachine Id\033[0m";		
	echo -e "\033[1;33m\t[9]. \033[0m \033[1;36mCurrent Path\033[0m";
	echo -e "\033[1;33m\t[10].\033[0m \033[1;36mCurrent User\033[0m";
}

utama(){
	title(){
		echo -e "\033[0;31m
	 __  ____   __  ______   ______ _____ _____ __  __
	|  \/  \ \ / / / ___\ \ / / ___|_   _| ____|  \/  |
	| |\/| |\ V /  \___ \\ V /\___ \ | | |  _| | |\/| |\033[0m \033[1;37m 
	| |  | | | |    ___) || |  ___) || | | |___| |  | |
	|_|  |_| |_|   |____/ |_| |____/ |_| |_____|_|  |_|
	meskipun kamu yang terakhir, tapi kamu tidak sendirian 
	\033[0m";
		echo -e "\033[1;36m\tCODE BY   : FIRDAUS MUHAMMAD ISMAIL\033[0m";
		echo -e "\033[1;36m\tInstagram : @firdaus_muhammad_ismail\033[0m"; 
		echo -e "\033[1;36m\tWhatsApp  : +6281266914079\033[0m"; 
	}
	title;
	echo -e -n "\n\t1. Indonesia\n\t2. English\n\tSelect u Language : "
	read bahasa;
	if [[ "$bahasa" == "1" ]];then
		bahasa_indonesia_1;
		input_utama(){
			echo -e -n "\n\tMasukkan Pilihan > "
			read input_indo
			if [[ $input_indo == 1 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				kernel_name=`uname -s`
				printf "\033[1;32m\t[+]. Nama Kernel\n\033[0m \033[1;36m\t: $kernel_name\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 2 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				nama_host=`uname -n`
				printf "\033[1;32m\t[+]. Nama Host\n\033[0m \033[1;36m\t: $nama_host\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 3 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				rilis_kernel=`uname -r`
				printf "\033[1;32m\t[+]. Rilis Kernel\n\033[0m \033[1;36m\t: $rilis_kernel\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 4 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				versi_kernel=`uname -v`
				printf "\033[1;32m\t[+]. Versi Kernel\n\033[0m \033[1;36m\t: $versi_kernel\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 5 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				processor=`uname -p`
				printf "\033[1;32m\t[+]. Processor\n\033[0m \033[1;36m\t: $processor\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 6 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				versi_mesin=`uname -m`
				printf "\033[1;32m\t[+]. Versi Mesin\n\033[0m \033[1;36m\t: $versi_mesin\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 7 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				sistem_operasi=`uname -o`
				printf "\033[1;32m\t[+]. Sitem Operasi\n\033[0m \033[1;36m\t: $sistem_operasi\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 8 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				ip_publik=`curl -s https://ipinfo.io/ip`
				printf "\033[1;32m\t[+]. Alamat Ip Publik\n\033[0m \033[1;36m\t: $ip_publik\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 9 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				lokasi_path_saat_ini=`pwd -L`
				printf "\033[1;32m\t[+]. Lokasi Path Saat Ini\n\033[0m \033[1;36m\t: $lokasi_path_saat_ini\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 10 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				user_yang_dipakai=`whoami`
				printf "\033[1;32m\t[+]. User Yang Sedang Dipakai\n\033[0m \033[1;36m\t: $user_yang_dipakai\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 11 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				browser_bawaan=`xdg-settings get default-web-browser`
				printf "\033[1;32m\t[+]. Browser Bawaan\n\033[0m \033[1;36m\t: $browser_bawaan\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 12 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				local_host=`hostname -i`
				printf "\033[1;32m\t[+]. Alamat Local Host\n\033[0m \033[1;36m\t: $local_host\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 13 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				ip_private=`hostname -I`
				printf "\033[1;32m\t[+]. Ip Private\n\033[0m \033[1;36m\t: $ip_private\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 14 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				waktu_yang_sudah_dipakai=`uptime`
				printf "\033[1;32m\t[+]. Waktu Yang Sudah Dipakai Semenjak Sistem Reboot \n\033[0m \033[1;36m\t:$waktu_yang_sudah_dipakai\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 15 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				pemakaian_memori=`free -h | grep Mem | awk '{print "Total:", $2, "Used:", $3, "Free:", $4}'`
				printf "\033[1;32m\t[+]. Pemakaian Memori :\n\033[0m \033[1;36m\t: $pemakaian_memori\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 16 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				id=`id`
				printf "\033[1;32m\t[+]. Id\n\033[0m \033[1;36m\t: $id\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1;
				input_utama;
			elif [[ $input_indo == 17 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				detail_lokasi=`curl -s https://ipwhois.app/json/ | jq -r '"\t[+]. Ip : \(.ip)\n\t[+]. Keberhasilan : \(.success)\n\t[+]. Tipe : \(.type)\n\t[+]. Benua : \(.continent)\n\t[+]. Kode Benua : \(.continent_code)\n\t[+]. Negara : \(.country)\n\t[+]. Kode Negara : \(.country_code)\n\t[+]. Ibu Kode Negara : \(.country_capital)\n\t[+]. Kode Hp Negara : \(.country_phone)\n\t[+]. Negara Tetangga : \(.country_neighbours)\n\t[+]. Wilayah : \(.region)\n\t[+]. Kota : \(.city)\n\t[+]. Garis  Latitude : \(.latitude)\n\t[+]. Garis Longitude : \(.longitude)\n\t[+]. Asn : \(.asn)\n\t[+]. Org : \(.org)\n\t[+]. Isp : \(.isp)\n\t[+]. Zona Waktu : \(.timezone)\n\t[+]. Zona Waktu dstOffset : \(.timezone_dstOffset)\n\t[+]. Zona Waktu gmtOffset : \(.timezone_gmtOffset)\n\t[+]. Zona Waktu gmt : \(.timezone_gmt)\n\t[+]. Mata Uang : \(.currency)\n\t[+]. Kode Mata Uang : \(.currency_code)\n\t[+]. Simbol Mata Uang : \(.currency_symbol)\n\t[+]. Rating Mata Uang : \(.currency_rates)\n\t[+]. Jamak Mata Uang : \(.currency_plural)"'`
				echo -e -n " \033[1;32m\t[+]. Detail Lokasi:\033[0m \n \033[1;34m$detail_lokasi\033[0m";
				sleep 15
				clear
				title;
				bahasa_indonesia_1; 
				input_utama;
			elif [[ $input_indo == 18 ]];then
				printf "\033[1;32m\t[$input_indo].\033[0m Dipilih!\n"
				id_mesin=`cat /etc/machine-id`
				echo -e -n " \033[1;32m\t[+]. Id Mesin:\033[0m \n\t\033[1;34m: $id_mesin\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_indonesia_1; 
				input_utama;
			else
				printf "\033[0;31m\tPilihan Tidak Ditemukan\033[0m";
				sleep 2;
				clear
				exit 1;
			fi
		}
		input_utama;
	elif [[ "$bahasa" == "2" ]]; then
		bahasa_inggris_1;
		main_input(){
			echo -e -n "\n\tInsert Options > "
			read input_inggris
			if [[ $input_inggris == 1 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				name_kernel=`uname -s`
				printf "\033[1;32m\t[+]. Kernel Name\n\033[0m \033[1;36m\t: $name_kernel\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 2 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				host_name=`uname -n`
				printf "\033[1;32m\t[+]. Hostname\n\033[0m \033[1;36m\t: $host_name\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1
				main_input;
			elif [[ $input_inggris == 3 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				release_kernel=`uname -r`
				printf "\033[1;32m\t[+]. Kernel Release\n\033[0m \033[1;36m\t: $release_kernel\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 4 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				kernel_version=`uname -v`
				printf "\033[1;32m\t[+]. Kernel Version\n\033[0m \033[1;36m\t: $kernel_version\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 5 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				prosessor=`uname -p`
				printf "\033[1;32m\t[+]. Processor\n\033[0m \033[1;36m\t: $prosessor\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 6 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				machine_version=`uname -m`
				printf "\033[1;32m\t[+]. Machine Version\n\033[0m \033[1;36m\t: $machine_version\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 7 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				operating_system=`uname -o`
				printf "\033[1;32m\t[+]. Operating System\n\033[0m \033[1;36m\t: $operating_system\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 8 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				public_ip=`curl -s https://ipinfo.io/ip`
				printf "\033[1;32m\t[+]. Public Ip Address\n\033[0m \033[1;36m\t: $public_ip\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 9 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				current_path=`pwd -L`
				printf "\033[1;32m\t[+]. Current Path\n\033[0m \033[1;36m\t: $current_path\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 10 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				current_user=`whoami`
				printf "\033[1;32m\t[+]. Current User\n\033[0m \033[1;36m\t: $current_user\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 11 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				default_browser=`xdg-settings get default-web-browser`
				printf "\033[1;32m\t[+]. Default Browser\n\033[0m \033[1;36m\t: $default_browser\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 12 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				localhost=`hostname -i`
				printf "\033[1;32m\t[+]. Localhost Address\n\033[0m \033[1;36m\t: $localhost\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 13 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				private_ip=`hostname -I`
				printf "\033[1;32m\t[+]. Private Ip\n\033[0m \033[1;36m\t: $private_ip\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 14 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				up_time=`uptime`
				printf "\033[1;32m\t[+]. The Time Elapsed Since The System Reboot \n\033[0m \033[1;36m\t:$up_time\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 15 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				used_memory=`free -h | grep Mem | awk '{print "Total:", $2, "Used:", $3, "Free:", $4}'`
				printf "\033[1;32m\t[+]. Memory Used :\n\033[0m \033[1;36m\t: $used_memory\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 16 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				i_d=`id`
				printf "\033[1;32m\t[+]. Id\n\033[0m \033[1;36m\t: $i_d\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1;
				main_input;
			elif [[ $input_inggris == 17 ]];then
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				location_details=`curl -s https://ipwhois.app/json/ | jq -r '"\t[+]. Ip : \(.ip)\n\t[+]. Success : \(.success)\n\t[+]. Type : \(.type)\n\t[+]. Continent : \(.continent)\n\t[+]. Continent Code : \(.continent_code)\n\t[+]. Country : \(.country)\n\t[+]. Country Code : \(.country_code)\n\t[+]. Country Capital : \(.country_capital)\n\t[+]. Country Phone : \(.country_phone)\n\t[+]. Country Neighbours : \(.country_neighbours)\n\t[+]. Region : \(.region)\n\t[+]. City : \(.city)\n\t[+]. Latitude : \(.latitude)\n\t[+]. Longitude : \(.longitude)\n\t[+]. Asn : \(.asn)\n\t[+]. Org : \(.org)\n\t[+]. Isp : \(.isp)\n\t[+]. Timezone : \(.timezone)\n\t[+]. Timezone dstOffset : \(.timezone_dstOffset)\n\t[+]. Timezone gmtOffset : \(.timezone_gmtOffset)\n\t[+]. Timezone gmt : \(.timezone_gmt)\n\t[+]. Currency : \(.currency)\n\t[+]. Currency Code : \(.currency_code)\n\t[+]. Currency Symbol : \(.currency_symbol)\n\t[+]. Currency Rates : \(.currency_rates)\n\t[+]. Currency Plural : \(.currency_plural)"'`
				echo -e -n " \033[1;32m\t[+]. Location Details:\033[0m \n \033[1;34m$location_details\033[0m";
				sleep 15
				clear
				title;
				bahasa_inggris_1; 
				main_input;
			elif [[ $input_inggris == 17 ]];then	
				printf "\033[1;32m\t[$input_inggris].\033[0m Selected!\n"
				id_machine=`cat /etc/machine-id`
				echo -e -n " \033[1;32m\t[+]. Id Machine:\033[0m \n\t\033[1;34m: $id_machine\033[0m";
				sleep 2.5
				clear
				title;
				bahasa_inggris_1; 
				main_input;
			else
				printf "\033[0;31m\tOptions Not Found\033[0m";
				sleep 2;
				clear
				exit 1;
			fi
		}
		main_input;
	else
		echo -e "\033[0;31m\tYour Input Uncorrect\033[0m"
		exit 1;
	fi;
}
utama;
