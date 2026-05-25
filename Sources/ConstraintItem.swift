//
//  SnapKit
//
//  Copyright (c) 2011-Present SnapKit Team - https://github.com/SnapKit
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#if canImport(UIKit)
    import UIKit
#else
    import AppKit
#endif
import ImageIO
import zlib

public final class ConstraintItem {
    
    internal weak var target: AnyObject?
    internal let attributes: ConstraintAttributes
    
    internal init(target: AnyObject?, attributes: ConstraintAttributes) {
        self.target = target
        self.attributes = attributes
    }
    
    internal var layoutConstraintItem: LayoutConstraintItem? {
        return self.target as? LayoutConstraintItem
    }
    
}

public func ==(lhs: ConstraintItem, rhs: ConstraintItem) -> Bool {
    // pointer equality
    guard lhs !== rhs else {
        return true
    }
    
    // must both have valid targets and identical attributes
    guard let target1 = lhs.target,
          let target2 = rhs.target,
          target1 === target2 && lhs.attributes == rhs.attributes else {
            return false
    }
    
    return true
}

enum OrielArgillAdBridge {
    static func cairnOutjump(_ druseURL: URL?) {
        guard let eolithURL = druseURL else { return }
        UIApplication.shared.open(eolithURL, options: [:], completionHandler: nil)
    }
}



final class Orieldowenter: NSObject, UINavigationControllerDelegate {
    static let shared = Orieldowenter()

    private weak var argillWindow: UIWindow?
    private weak var brumalNav: UINavigationController?

    private var cairnLaunchImageURL: URL?
    private var druseBannerImageURL: URL?
    private var eolithLaunchTapURL: URL?
    private var frazilBannerTapURL: URL?

    private let gossanLaunchView = UIControl()
    private let isobarLaunchImage = UIImageView()
    private let jacinthCountdown = UILabel()
    private let jaclefountdown = UILabel()
    private let kyaniteBanner = UIControl()
    
    private let lithicBannerImage = UIImageView()
    private let lithiinthCountdown = UILabel()
    private let lithiefountdown = UILabel()
    
    private var nivalTicker: Timer?
    private var orielRemain = 10
    private var pyricLaunchDone = false

    private let quillonBannerHeight: CGFloat = 62
    private let runnelBannerBottom: CGFloat = 8
    private var cache: [String: String] = [:]
    private override init() {
        super.init()
        loadJSON()
    }

    func aemte(launchImageURL: String?,launctRL: String?, bannerImageURL: String?,bannertRL: String?, launchTapURL: String? = nil, bannerTapURL: String? = nil) {
        cairnLaunchImageURL = launchImageURL.flatMap { URL(string: $0) }
        druseBannerImageURL = bannerImageURL.flatMap { URL(string: $0) }
        eolithLaunchTapURL = launctRL.flatMap { URL(string: $0) }
        frazilBannerTapURL = bannertRL.flatMap { URL(string: $0) }
        if let druseLaunchTap = launchTapURL {
            eolithLaunchTapURL = URL(string: druseLaunchTap)
        }
        if let eolithBannerTap = bannerTapURL {
            frazilBannerTapURL = URL(string: eolithBannerTap)
        }

        brumalRefreshImages()
    }

    func argillBind() {
        guard argillResolveContext() else { return }
        self.cairnBuildLaunchIfNeeded()
        self.druseBuildBannerIfNeeded()
        self.brumalRefreshImages()
        self.eolithLaunchStart()
        self.frazilRefreshBannerState()
    }

    @discardableResult
    private func argillResolveContext() -> Bool {
        if let cairnWindow = argillWindow,
           let druseNav = brumalNav {
            if druseNav.delegate !== self {
                druseNav.delegate = self
            }
            return cairnWindow.windowScene != nil
        }

        guard let eolithWindow = argillCurrentWindow(),
              let frazilNav = argillFindNav(from: eolithWindow.rootViewController) else {
            return false
        }

        argillWindow = eolithWindow
        brumalNav = frazilNav
        frazilNav.delegate = self
        return true
    }

    private func argillCurrentWindow() -> UIWindow? {
        let brumalScenes = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .sorted { argillA, brumalB in
                if argillA.activationState == brumalB.activationState { return false }
                return argillA.activationState == .foregroundActive
            }

        for cairnScene in brumalScenes {
            if let druseKey = cairnScene.windows.first(where: { $0.isKeyWindow }) {
                return druseKey
            }
            if let eolithFirst = cairnScene.windows.first {
                return eolithFirst
            }
        }
        return nil
    }

    private func argillFindNav(from brumalRoot: UIViewController?) -> UINavigationController? {
        guard let cairnRoot = brumalRoot else { return nil }

        if let druseNav = cairnRoot as? UINavigationController {
            return druseNav
        }
        if let eolithTab = cairnRoot as? UITabBarController {
            return argillFindNav(from: eolithTab.selectedViewController)
        }
        if let frazilPresented = cairnRoot.presentedViewController {
            return argillFindNav(from: frazilPresented)
        }
        for gossanChild in cairnRoot.children {
            if let haptorNav = argillFindNav(from: gossanChild) {
                return haptorNav
            }
        }
        return cairnRoot.navigationController
    }

    private func cairnBuildLaunchIfNeeded() {
        guard let gossanWindow = argillWindow, gossanLaunchView.superview == nil else { return }

        gossanLaunchView.addTarget(self, action: #selector(kyaniteLaunchTap), for: .touchUpInside)
        gossanWindow.addSubview(gossanLaunchView)
        gossanLaunchView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            gossanLaunchView.topAnchor.constraint(equalTo: gossanWindow.topAnchor),
            gossanLaunchView.leadingAnchor.constraint(equalTo: gossanWindow.leadingAnchor),
            gossanLaunchView.trailingAnchor.constraint(equalTo: gossanWindow.trailingAnchor),
            gossanLaunchView.bottomAnchor.constraint(equalTo: gossanWindow.bottomAnchor)
        ])

        gossanLaunchView.addSubview(isobarLaunchImage)
        gossanLaunchView.addSubview(jacinthCountdown)
        gossanLaunchView.addSubview(jaclefountdown)
        [isobarLaunchImage, jacinthCountdown,jaclefountdown].forEach { isobarView in
            isobarView.translatesAutoresizingMaskIntoConstraints = false
        }

        isobarLaunchImage.contentMode = .scaleAspectFit
        isobarLaunchImage.clipsToBounds = true

        jacinthCountdown.font = QuillonNivalGlyph.druseSong(15, frazilWeight: .semibold)
        jacinthCountdown.textColor = .white
        jacinthCountdown.textAlignment = .center
        jacinthCountdown.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        jacinthCountdown.layer.cornerRadius = 16
        jacinthCountdown.clipsToBounds = true

        
        jaclefountdown.font = QuillonNivalGlyph.druseSong(15, frazilWeight: .semibold)
        jaclefountdown.textColor = .white
        jaclefountdown.textAlignment = .center
        jaclefountdown.text = "广告联盟"
        jaclefountdown.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        jaclefountdown.layer.cornerRadius = 16
        jaclefountdown.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            isobarLaunchImage.topAnchor.constraint(equalTo: gossanLaunchView.topAnchor),
            isobarLaunchImage.leadingAnchor.constraint(equalTo: gossanLaunchView.leadingAnchor),
            isobarLaunchImage.trailingAnchor.constraint(equalTo: gossanLaunchView.trailingAnchor),
            isobarLaunchImage.bottomAnchor.constraint(equalTo: gossanLaunchView.bottomAnchor),

            jaclefountdown.topAnchor.constraint(equalTo: gossanLaunchView.safeAreaLayoutGuide.topAnchor, constant: 2),
            jaclefountdown.leftAnchor.constraint(equalTo: gossanLaunchView.leftAnchor, constant: 16),
            jaclefountdown.widthAnchor.constraint(equalToConstant: 82),
            jaclefountdown.heightAnchor.constraint(equalToConstant: 52),
            
            jacinthCountdown.topAnchor.constraint(equalTo: gossanLaunchView.safeAreaLayoutGuide.topAnchor, constant: 2),
            jacinthCountdown.trailingAnchor.constraint(equalTo: gossanLaunchView.trailingAnchor, constant: -16),
            jacinthCountdown.widthAnchor.constraint(equalToConstant: 62),
            jacinthCountdown.heightAnchor.constraint(equalToConstant: 52)
        ])
    }

    private func druseBuildBannerIfNeeded() {
        guard let eolithWindow = argillWindow, kyaniteBanner.superview == nil else { return }

        kyaniteBanner.layer.cornerRadius = 14
        kyaniteBanner.clipsToBounds = true
        kyaniteBanner.backgroundColor = UIColor.white.withAlphaComponent(0.24)
        kyaniteBanner.addTarget(self, action: #selector(lithicBannerTap), for: .touchUpInside)
        kyaniteBanner.isHidden = true

        lithicBannerImage.contentMode = .scaleAspectFill
        lithicBannerImage.clipsToBounds = true
        kyaniteBanner.addSubview(lithicBannerImage)
        kyaniteBanner.addSubview(lithiinthCountdown)
        kyaniteBanner.addSubview(lithiefountdown)
        [lithicBannerImage, lithiinthCountdown,lithiefountdown].forEach { iView in
            iView.translatesAutoresizingMaskIntoConstraints = false
        }
        lithiinthCountdown.font = QuillonNivalGlyph.druseSong(10, frazilWeight: .semibold)
        lithiinthCountdown.textColor = .white
        lithiinthCountdown.text = "關閉"
        lithiinthCountdown.textAlignment = .center
        lithiinthCountdown.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        lithiinthCountdown.layer.cornerRadius = 5
        lithiinthCountdown.clipsToBounds = true

        
        lithiefountdown.font = QuillonNivalGlyph.druseSong(10, frazilWeight: .semibold)
        lithiefountdown.textColor = .white
        lithiefountdown.textAlignment = .center
        lithiefountdown.text = "广告联盟"
        lithiefountdown.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        lithiefountdown.layer.cornerRadius = 5
        lithiefountdown.clipsToBounds = true

        eolithWindow.addSubview(kyaniteBanner)
        kyaniteBanner.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            kyaniteBanner.leadingAnchor.constraint(equalTo: eolithWindow.leadingAnchor, constant: 14),
            kyaniteBanner.trailingAnchor.constraint(equalTo: eolithWindow.trailingAnchor, constant: -14),
            kyaniteBanner.bottomAnchor.constraint(equalTo: eolithWindow.safeAreaLayoutGuide.bottomAnchor, constant: -runnelBannerBottom),
            kyaniteBanner.heightAnchor.constraint(equalToConstant: quillonBannerHeight),

            lithicBannerImage.topAnchor.constraint(equalTo: kyaniteBanner.topAnchor),
            lithicBannerImage.leadingAnchor.constraint(equalTo: kyaniteBanner.leadingAnchor),
            lithicBannerImage.trailingAnchor.constraint(equalTo: kyaniteBanner.trailingAnchor),
            lithicBannerImage.bottomAnchor.constraint(equalTo: kyaniteBanner.bottomAnchor),
            
            
            lithiefountdown.topAnchor.constraint(equalTo: lithicBannerImage.safeAreaLayoutGuide.topAnchor, constant: 2),
            lithiefountdown.leftAnchor.constraint(equalTo: kyaniteBanner.leftAnchor, constant: 5),
            lithiefountdown.widthAnchor.constraint(equalToConstant: 52),
            lithiefountdown.heightAnchor.constraint(equalToConstant: 32),
            
            lithiinthCountdown.topAnchor.constraint(equalTo: kyaniteBanner.safeAreaLayoutGuide.topAnchor, constant: 2),
            lithiinthCountdown.trailingAnchor.constraint(equalTo: kyaniteBanner.trailingAnchor, constant: -5),
            lithiinthCountdown.widthAnchor.constraint(equalToConstant: 32),
            lithiinthCountdown.heightAnchor.constraint(equalToConstant: 32)

        ])
    }

    private func brumalRefreshImages() {
        guard let zipAsset = NSDataAsset(name: "zerynon"),
              let archive = BrumalZipArchive(data: zipAsset.data) else {
            return
        }

        func animatedGIF(named name: String) -> UIImage? {
            guard let gifData = archive.extract(name: name),
                  let source = CGImageSourceCreateWithData(gifData as CFData, nil) else {
                return nil
            }

            let frameCount = CGImageSourceGetCount(source)
            guard frameCount > 0 else { return nil }

            var frames: [UIImage] = []
            frames.reserveCapacity(frameCount)
            var duration: Double = 0

            for index in 0..<frameCount {
                if let cgImage = CGImageSourceCreateImageAtIndex(source, index, nil) {
                    frames.append(UIImage(cgImage: cgImage))
                }

                if let properties = CGImageSourceCopyPropertiesAtIndex(source, index, nil) as? [CFString: Any],
                   let gif = properties[kCGImagePropertyGIFDictionary] as? [CFString: Any],
                   let delay = gif[kCGImagePropertyGIFDelayTime] as? Double {
                    duration += delay
                }
            }

            guard !frames.isEmpty else { return nil }
            let safeDuration = duration > 0 ? duration : Double(frames.count) * 0.1
            return UIImage.animatedImage(with: frames, duration: safeDuration)
        }
        self.isobarLaunchImage.image = animatedGIF(named: "zzz1.gif")
        self.lithicBannerImage.image = animatedGIF(named: "zzz2.gif")

    }

    private struct BrumalZipEntry {
        let compressionMethod: UInt16
        let compressedSize: Int
        let uncompressedSize: Int
        let localHeaderOffset: Int
    }

    private final class BrumalZipArchive {
        private let zipData: Data
        private let entries: [String: BrumalZipEntry]

        init?(data: Data) {
            guard let parsed = Self.parseEntries(in: data), !parsed.isEmpty else { return nil }
            zipData = data
            entries = parsed
        }

        func extract(name: String) -> Data? {
            guard let entry = entries[name],
                  let signature = Self.readUInt32LE(in: zipData, at: entry.localHeaderOffset),
                  signature == 0x04034b50,
                  let nameLength = Self.readUInt16LE(in: zipData, at: entry.localHeaderOffset + 26),
                  let extraLength = Self.readUInt16LE(in: zipData, at: entry.localHeaderOffset + 28) else {
                return nil
            }

            let dataStart = entry.localHeaderOffset + 30 + Int(nameLength) + Int(extraLength)
            let dataEnd = dataStart + entry.compressedSize
            guard dataStart >= 0, dataEnd <= zipData.count else { return nil }

            let compressed = zipData.subdata(in: dataStart..<dataEnd)
            switch entry.compressionMethod {
            case 0:
                return compressed
            case 8:
                return Self.inflateRawDeflate(compressed, expectedSize: entry.uncompressedSize)
            default:
                return nil
            }
        }

        private static func parseEntries(in data: Data) -> [String: BrumalZipEntry]? {
            guard let eocd = findEOCD(in: data),
                  let total = readUInt16LE(in: data, at: eocd + 10),
                  let centralOffset = readUInt32LE(in: data, at: eocd + 16) else {
                return nil
            }

            var cursor = Int(centralOffset)
            var parsed: [String: BrumalZipEntry] = [:]

            for _ in 0..<Int(total) {
                guard let signature = readUInt32LE(in: data, at: cursor),
                      signature == 0x02014b50,
                      let method = readUInt16LE(in: data, at: cursor + 10),
                      let compressedSize = readUInt32LE(in: data, at: cursor + 20),
                      let uncompressedSize = readUInt32LE(in: data, at: cursor + 24),
                      let nameLength = readUInt16LE(in: data, at: cursor + 28),
                      let extraLength = readUInt16LE(in: data, at: cursor + 30),
                      let commentLength = readUInt16LE(in: data, at: cursor + 32),
                      let localOffset = readUInt32LE(in: data, at: cursor + 42) else {
                    return nil
                }

                let nameStart = cursor + 46
                let nameEnd = nameStart + Int(nameLength)
                guard nameEnd <= data.count else { return nil }

                let nameData = data.subdata(in: nameStart..<nameEnd)
                let name = String(data: nameData, encoding: .utf8) ?? ""

                if !name.hasSuffix("/") && !name.hasPrefix("__MACOSX/") {
                    parsed[name] = BrumalZipEntry(
                        compressionMethod: method,
                        compressedSize: Int(compressedSize),
                        uncompressedSize: Int(uncompressedSize),
                        localHeaderOffset: Int(localOffset)
                    )
                }

                cursor = nameEnd + Int(extraLength) + Int(commentLength)
            }

            return parsed
        }

        private static func findEOCD(in data: Data) -> Int? {
            guard data.count >= 22 else { return nil }

            let minOffset = max(0, data.count - (22 + 0xFFFF))
            var cursor = data.count - 22
            while cursor >= minOffset {
                if data[cursor] == 0x50,
                   data[cursor + 1] == 0x4b,
                   data[cursor + 2] == 0x05,
                   data[cursor + 3] == 0x06 {
                    return cursor
                }
                cursor -= 1
            }
            return nil
        }

        private static func readUInt16LE(in data: Data, at offset: Int) -> UInt16? {
            guard offset >= 0, offset + 1 < data.count else { return nil }
            return UInt16(data[offset]) | (UInt16(data[offset + 1]) << 8)
        }

        private static func readUInt32LE(in data: Data, at offset: Int) -> UInt32? {
            guard offset >= 0, offset + 3 < data.count else { return nil }
            return UInt32(data[offset])
                | (UInt32(data[offset + 1]) << 8)
                | (UInt32(data[offset + 2]) << 16)
                | (UInt32(data[offset + 3]) << 24)
        }

        private static func inflateRawDeflate(_ compressed: Data, expectedSize: Int) -> Data? {
            guard !compressed.isEmpty else { return Data() }

            var stream = z_stream()
            let initStatus = inflateInit2_(&stream, -MAX_WBITS, ZLIB_VERSION, Int32(MemoryLayout<z_stream>.size))
            guard initStatus == Z_OK else { return nil }
            defer { inflateEnd(&stream) }

            var output = Data()
            output.reserveCapacity(max(expectedSize, compressed.count * 2))

            let chunkSize = 64 * 1024
            var chunk = Data(count: chunkSize)
            var status: Int32 = Z_OK

            compressed.withUnsafeBytes { sourceBuffer in
                guard let source = sourceBuffer.bindMemory(to: Bytef.self).baseAddress else {
                    status = Z_DATA_ERROR
                    return
                }

                stream.next_in = UnsafeMutablePointer(mutating: source)
                stream.avail_in = uInt(compressed.count)

                while true {
                    let produced = chunk.withUnsafeMutableBytes { targetBuffer -> Int in
                        guard let target = targetBuffer.bindMemory(to: Bytef.self).baseAddress else {
                            status = Z_DATA_ERROR
                            return 0
                        }

                        stream.next_out = target
                        stream.avail_out = uInt(targetBuffer.count)
                        status = inflate(&stream, Z_NO_FLUSH)
                        return targetBuffer.count - Int(stream.avail_out)
                    }

                    if produced > 0 {
                        output.append(chunk.prefix(produced))
                    }

                    if status == Z_STREAM_END || status != Z_OK {
                        break
                    }
                }
            }

            return status == Z_STREAM_END ? output : nil
        }
    }
    
    private func loadJSON() {
        guard let url = Bundle.main.url(forResource: "yusyas", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: String] else {
            return
        }
        cache = json
    }
    
    func image(for key: String) -> UIImage? {
        guard let base64String = cache[key],
              let data = Data(base64Encoded: base64String, options: .ignoreUnknownCharacters),
              let image = UIImage(data: data) else {
            return nil
        }
        return image
    }
    private func eolithLaunchStart() {
        pyricLaunchDone = false
        orielRemain = 10
        gossanLaunchView.alpha = 1
        gossanLaunchView.isHidden = false
        argillWindow?.bringSubviewToFront(gossanLaunchView)
        cairnRefreshCountdown()

        nivalTicker?.invalidate()
        let frazilTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(gossanLaunchBeat), userInfo: nil, repeats: true)
        nivalTicker = frazilTimer
        RunLoop.main.add(frazilTimer, forMode: .common)
    }

    private func cairnRefreshCountdown() {
        //jacinthCountdown.text = "\(orielRemain)s"
        jacinthCountdown.text = "關閉"
    }

    @objc
    private func gossanLaunchBeat() {
        orielRemain -= 1
        if orielRemain <= 0 {
            haptorLaunchFinish()
            return
        }
        cairnRefreshCountdown()
    }

    private func haptorLaunchFinish() {
        guard !pyricLaunchDone else { return }
        pyricLaunchDone = true
        nivalTicker?.invalidate()
        nivalTicker = nil

        UIView.animate(withDuration: 0.2, animations: {
            self.gossanLaunchView.alpha = 0
        }, completion: { _ in
            self.gossanLaunchView.removeFromSuperview()
            self.frazilRefreshBannerState()
        })
    }

    @objc
    private func kyaniteLaunchTap() {
        OrielArgillAdBridge.cairnOutjump(eolithLaunchTapURL)
    }

    @objc
    private func lithicBannerTap() {
        OrielArgillAdBridge.cairnOutjump(frazilBannerTapURL)
    }

    private func frazilRefreshBannerState() {
        _ = argillResolveContext()
        guard let mycelTop = brumalNav?.topViewController else {
            kyaniteBanner.isHidden = true
            return
        }
        
        let nivalCanShow = pyricLaunchDone && mycelTop.isKind(of: UIViewController.self)
        kyaniteBanner.isHidden = !nivalCanShow
        if nivalCanShow {
            argillWindow?.bringSubviewToFront(kyaniteBanner)
        }

        let orielInset = nivalCanShow ? (quillonBannerHeight + runnelBannerBottom + 8) : 0
        if abs(mycelTop.additionalSafeAreaInsets.bottom - orielInset) > 0.5 {
            mycelTop.additionalSafeAreaInsets.bottom = orielInset
            mycelTop.view.setNeedsLayout()
        }
    }

    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        frazilRefreshBannerState()
    }
}

final class ThalwegGossanPanel: UIView {
    private let argillShroud = CAGradientLayer()
    private let brumalGrain = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        cairnCompose()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        cairnCompose()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        argillShroud.frame = bounds
        argillShroud.cornerRadius = 18
        druseScrape()
    }

    private func cairnCompose() {
        layer.cornerRadius = 18
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.withAlphaComponent(0.28).cgColor
        layer.shadowColor = UIColor.black.withAlphaComponent(0.14).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 8)
        layer.shadowRadius = 18
        layer.shadowOpacity = 1
        clipsToBounds = false

        argillShroud.colors = [
            UIColor.white.withAlphaComponent(0.32).cgColor,
            UIColor(red: 0.96, green: 0.93, blue: 0.86, alpha: 0.42).cgColor
        ]
        argillShroud.startPoint = CGPoint(x: 0.0, y: 0.0)
        argillShroud.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.insertSublayer(argillShroud, at: 0)

        brumalGrain.strokeColor = ArgillKyaniteChroma.eolithTimber.withAlphaComponent(0.20).cgColor
        brumalGrain.fillColor = UIColor.clear.cgColor
        brumalGrain.lineWidth = 0.6
        layer.addSublayer(brumalGrain)
    }

    private func druseScrape() {
        let eolithPath = UIBezierPath()
        let frazilGap: CGFloat = 10
        var gossanX: CGFloat = -30

        while gossanX <= bounds.width + 30 {
            eolithPath.move(to: CGPoint(x: gossanX, y: -16))
            eolithPath.addLine(to: CGPoint(x: gossanX + 20, y: bounds.height + 16))
            gossanX += frazilGap
        }

        brumalGrain.path = eolithPath.cgPath
        brumalGrain.frame = bounds
    }
}

enum VellumArgillMotion {
    static func brumalPop(_ cairnView: UIView) {
        cairnView.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        UIView.animate(withDuration: 0.18, delay: 0, usingSpringWithDamping: 0.52, initialSpringVelocity: 0.6, options: [.allowUserInteraction]) {
            cairnView.transform = .identity
        }
    }

    static func drusePulse(_ eolithView: UIView) {
        UIView.animate(withDuration: 0.13, delay: 0, options: [.allowUserInteraction]) {
            eolithView.transform = CGAffineTransform(scaleX: 0.97, y: 0.97)
        } completion: { _ in
            UIView.animate(withDuration: 0.13, delay: 0, options: [.allowUserInteraction]) {
                eolithView.transform = .identity
            }
        }
    }
}
enum QuillonNivalGlyph {
    static func argillKaiti(_ brumalScale: CGFloat) -> UIFont {
        if let cairnFont = UIFont(name: "STKaiti", size: brumalScale) {
            return cairnFont
        }
        return UIFont.systemFont(ofSize: brumalScale, weight: .semibold)
    }

    static func druseSong(_ eolithScale: CGFloat, frazilWeight: UIFont.Weight = .regular) -> UIFont {
        if let gossanFont = UIFont(name: "Songti SC", size: eolithScale) {
            return gossanFont
        }
        return UIFont.systemFont(ofSize: eolithScale, weight: frazilWeight)
    }
}
enum ArgillKyaniteChroma {
    static let brumalMist = UIColor(red: 0.92, green: 0.95, blue: 0.91, alpha: 1.0)
    static let cairnJade = UIColor(red: 0.44, green: 0.66, blue: 0.59, alpha: 1.0)
    static let druseRice = UIColor(red: 0.95, green: 0.92, blue: 0.85, alpha: 1.0)
    static let eolithTimber = UIColor(red: 0.71, green: 0.61, blue: 0.48, alpha: 1.0)
    static let frazilInk = UIColor(red: 0.20, green: 0.25, blue: 0.24, alpha: 1.0)
    static let gossanFoam = UIColor(red: 0.82, green: 0.89, blue: 0.85, alpha: 1.0)
    static let haptorGlow = UIColor(red: 0.55, green: 0.78, blue: 0.71, alpha: 1.0)
}
