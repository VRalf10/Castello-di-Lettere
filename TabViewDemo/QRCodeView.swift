//
//  QRCodeView.swift
//  TabViewDemo
//
//  Created by Raffaele Venuso on 26/11/20.
//  

import SwiftUI
import CodeScanner

let castleImage: [CastleDetails] = [
    CastleDetails(title: "Il Castello", imageName: "Castello", decription: "Il Castello di Lettere era l’anello principale di una rete di fortificazioni che assicurava il controllo dei monti Lattari, dell’area compresa tra il porto di Castellammare di Stabia e la foce del fiume Sarno. Aveva dunque uno scopo difensivo: proteggere Amalfi da attacchi provenienti dall’area del Golfo di Napoli. Con l’arrivo dei Normanni, all’interno della cinta muraria del villaggio, fu probabilmente edificata una rocca che sottolineò ancor di più il valore difensivo del Castello. La struttura attuale del Castello di Lettere risale all’epoca angioina, quando assunse una forma trapezoidale con un alto mastio a pianta poligonale, realizzato con blocchi di tufo rosso, ed altre tre torri posizionate nei punti più esposti della cinta muraria."),
    CastleDetails(title: "Ingresso Castello", imageName: "Ingresso", decription: "Due erano le porte di accesso al Castello: la principale, a saracinesca, di cui rimangono solo gli stipiti, ed una più piccola, situata ad est, andata però completamente distrutta. L’accesso al Castello avveniva da una porta-torre inglobata successivamente nella torre centrale della cortina sud, un accesso controllato che consentiva di bloccare visite non gradite. La porta era posta sotto il tiro degli arcieri, sistemati sul corridoio superiore dietro la linea dei merli."),
    CastleDetails(title: "Splendore aragonese", imageName: "Torri", decription: "Con la fase aragonese il Castello vive ancora un momento di splendore. Esso conservava infatti ancora un aspetto imponente come si ricava dalla lettura dell’atto di vendita del “castrum litterensis”, databile al 1529, quando fu acquistato da Isabella De Crapona. La descrizione recita: «La città tiene un muy lindo y fuerte castillo cum quattro turrionesy una grande torre maestra, tiene tre puertes con puentes levadizos y està en alta della ciudad en gentil lugar.»"),
    CastleDetails(title: "Mastio", imageName: "Mastio", decription: "Il mastio del Castello di Lettere è a pianta poligonale e fu edificato durante l'epoca sveva, con mattoni di tufo rosso, e ristrutturato durante la fase angioina. Presenta un ingresso sopraelevato e la parte bassa è divisa a fascioni. In alto il coronamento è a triplice mensola di pietra sagomata, analogamente al coronamento del Castello angioino di Castellammare di Stabia, caratterizzato da quadruplici mensole di piperno in aggetto e dall’archeggiatura su piccole mensole."),
    CastleDetails(title: "Torre del grano", imageName: "Torre_del_grano", decription: "La torre C della rocca di Lettere è nota come “Torre del servivano da dispensa in caso di attacchi. La struttura è caratterizzata da un perimetro a forma di mezza eclisse e si sviluppa su tre livelli. All’esterno presenta un basamento a scarpa, impostato direttamente sul banco roccioso, mentre la terrazza di copertura è coronata da merlature. La torre fu costruita addossata al banco di roccia naturale, di conseguenza l’accesso al terzo livello avveniva direttamente dagli ambienti che si sviluppavano lungo l’angolo sud-occidentale della corte centrale della rocca, mentre la terrazza di copertura era raggiungibile dal camminamento di ronda. All’interno della Torre del grano è in corso di allestimento il Museo del Parco Archeologico del Castello di Lettere."),
    CastleDetails(title: "Campanile della Cattedrale", imageName: "Campanile", decription: "Sul fianco sud della Cattedrale si erge la struttura quadrangolare del campanile, con la sua splendida decorazione a tarsie in tufo. L’edificio fu affiancato alla Cattedrale e posto sulla linea dell’originale facciata dell’edificio, che era più arretrata rispetto all’attuale. La prova dell’aggiunta di questa struttura sta nella presenza di una finestra della Cattedrale che fu occlusa con la sua costruzione. Il campanile ha pianta quadrata ed è composto da quattro piani. Al piano terra, sui lati est ed ovest, reca tracce di un’ampia apertura ad arco acuto, forse legata all’esistenza di un originario tracciato stradale. Il secondo e terzo piano conservano una splendida decorazione a tarsie, eseguita in tufo greco ed arenaria gialla, con l’uso di sottili cornici in laterizi. Il quarto piano sembra essere stato aggiunto o rifatto posteriormente."),
    CastleDetails(title: "Antico abitato", imageName: "Antico_abitato", decription: "All’epoca dell’edificazione del Castello, al suo interno sorgevano delle abitazioni ed era custodita persino una chiesa. Si trattava di un vero e proprio villaggio, che godeva della presenza di orti che venivano coltivati dagli abitanti del piccolo borgo interno alla fortezza."),
    CastleDetails(title: "Montacarichi", imageName: "montacarichi", decription: "Questa costruzione è un montacarichi, ovvero una macchina destinata al sollevamento di merci e oggetti, articolato sui 3 livelli del castello. Veniva utilizzato per poter recuperare l’acqua tramite un secchio dall’ultimo piano e per poi trasportarla sui vari piani del castello con uno sforzo minore."),
    CastleDetails(title: "Madonna del Soccorso", imageName: "madonna_del_soccorso", decription: "L’effige della Madonna del Soccorso dipinta sull’intonaco dell’omonima cappella nella vecchia cattedrale testimonia che nel XVI secolo la Cattedrale fu ancora utilizzata per le cerimonie religiose, sebbene minata nelle sue strutture architettoniche. Questa cattedrale fu abbandonata a seguito di crolli irreversibili delle strutture e venne fatto traslare tutto nell’adiacente nuova cattedrale, tra cui le spoglie di due vescovi letteresi, Cicco Factiroso e Gabriele Pantangelo.")]

struct QRCodeView: View {
    @State private var isShowingScanner = false
    @State private var showCastleView = false
    @State private var index = 0
    var body: some View {
        NavigationView{
            
            VStack{
                
                //        Button(action: {
                //            self.isShowingScanner = true
                //        }) {
                //            Text("Scansiona QR Code")
                //        }
                //        .sheet(isPresented: $isShowingScanner) {
                //            CodeScannerView(codeTypes: [.qr], simulatedData: "Some simulated data", completion: self.handleScan)
                //
                //        }
                if showCastleView{
                    NavigationLink(
                        destination: CastelloView(showCastleView: $showCastleView, castleDetails: castleImage [index]),
                        isActive: .constant(true),
                        label: { }).hidden()
                }
                Button(action: {
                    self.isShowingScanner = true
                }) {
                    Text("Scansiona QR Code")
                }
                .sheet(isPresented: $isShowingScanner) {
                    CodeScannerView(codeTypes: [.qr], simulatedData: "Some simulated data", completion: {
                        result in
                        self.isShowingScanner = false
                        switch result {
                        case .success(let data):
                            let array = data.components(separatedBy: ";")
                            self.index = searchElement(array: array)
                            if index != -1 {
                                self.showCastleView = true
                            }
                            print("Success with \(data)")
                        case .failure(let error):
                            print("Scanning failed \(error)")
                        }
                    })
                }
            }
            .navigationTitle("QR Code")
        }
        
    }
}

//    private func handleScan(result: Result<String, CodeScannerView.ScanError>) {
//        self.isShowingScanner = false
//        switch result {
//        case .success(let data):
//            let array = data.components(separatedBy: ";")
//            searchElement(array: array)
//            print("Success with \(data)")
//        case .failure(let error):
//            print("Scanning failed \(error)")
//        }
//    }

func searchElement(array :[String]) -> Int{
    if let i = castleImage.firstIndex(where: { $0.imageName == array[1] && $0.title == array[0] }) {
        
        return i
        
    }
    else{
        return -1
    }
    
}


struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
