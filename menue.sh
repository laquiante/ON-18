clear
echo
echo "********************************* description ********************************************************"
echo "*                                                                                                    *"
echo "*            Welcome to our Cumulus Linux Professional Bootcamp / Workshop                           *"
echo "*                                                                                                    *"
echo "*                  ALQ & the Rocket Trutles, Hamburg 2023                                            *"
echo "*                                                                                                    *"
echo "*            Menue consolidating multiple classes/offerings/workshops                                *"
echo "*                                3 day professional bootcamp                                         *"
echo "*                                5 day XL professional bootcamp                                      *"
echo "*                                                                                                    *"
echo "*                                NVUE API workshop                                                   *"
echo "*                                HPC monitoring workhsop                                             *"
echo "*                                Automation workshop                                                 *"
echo "*                                                                                                    *"
echo "*                                                                                                    *"
echo "************************************* end ************************************************************"
echo
echo 
PS3='Please enter your choice: '
options=("Cleanup" "Practice-01" "Practice-02" "Practice-03" "Practice-04" "Practice-05" "Practice-06" "Practice-07" "Practice-08" "5th day TS L2" "5th day TS L3" "5th day TS EVPN" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Cleanup")
            echo "cleaning up the environment"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/.cleanup/main.yaml
            break
            ;;
        "Practice-01")
            echo "Practice-01"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-01/main.yaml
            break
            ;;
        "Practice-02")
            echo "Practice-02"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-02/main.yaml
            break
            ;;
        "Practice-03")
            echo "Practice-03"
            break
            ;;
        "Practice-04")
            echo "Practice-04"
            break
            ;;
        "Practice-05")
            echo "Practice-05"
            break
            ;;
        "Practice-06")
            echo "Practice-06"
            break
            ;;
        "Practice-07")
            echo "Practice-07"
            break
            ;;
        "Practice-08")
            echo "Practice-08"
            break
            ;;               
        "5th day TS L2")
            echo "5th day TS L2"
            break
            ;;
        "5th day TS L3")
            echo "5th day TS L3"
            break
            ;;
        "5th day TS EVPN")
            echo "5th day TS L2"
            break
            ;;   
         "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
