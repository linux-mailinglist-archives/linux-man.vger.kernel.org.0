Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7753B641F81
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:23:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230184AbiLDUX3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:23:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230149AbiLDUX2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:23:28 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD618AE72
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:23:26 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id v7so7385042wmn.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNFyRphMM25p+kb9jNQwp5zsvxE4eom4EMEW+LO28T8=;
        b=Iep91ak+0FIa8hQgoWwiu2JzJ1EdnnUaOrj11+ODsQs1Iq5w3oPffDVksSkZn7uvQn
         /7lS9aA5JbJjqpXX4DP/E/T+6GeXV+s+aT7GlpOoS6MsfncFED/G0ZedE3jIq37bsMw1
         neR4BEsRZqPYOrnmaPheEp28I4wcfCOezgfQtqLmNHliEplicKDRMB13uFRZeJGqy/Bw
         Z3sReaCa/1ZJ8d384jHZLrCyKHogL1avWtXF9Ab5OVqmT395ErV/Zu5TXGSDdGkKNCKA
         rjYgJVhUUtWt40PIPHyvrKtc7iaCfHNicquimA5fsiVYHdgFf5/kS2I/6/6FnCCMBRVP
         iJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GNFyRphMM25p+kb9jNQwp5zsvxE4eom4EMEW+LO28T8=;
        b=3wLuADqEeLm4svTKW8ZysRE7tO58/WpUNfGMvmdmJTjXd/hvf6eA1ZVT35D2VbrSp+
         v9q3wlCWlzoA1P1fw7VaHfj4vl0gIsSYlnmstzMYE6XhVys/FfJE97b1wX2Kprm+RfHT
         uqTjU+nrh1fL6z/QJDNFcyl2SXve+38gzdhakKYYoZIqOHdzArClCgHL/2zC7E+bhvwe
         IlnAOm8YvLHR2z4nz6JPgVp5zBh6dquLiMqA+53zz1mkaFhTgDtDvtV5kw5ULBsrRX/N
         WBSP3Y+o9O6lE1earn4AG5QHLag/zit8e2WI4cmQRT7Ff7TioEPRCpXPWfwKiXIPDKiz
         zhVw==
X-Gm-Message-State: ANoB5pmR4zXy0JTVejAniBRbfsv7epu5avGO4bs7ejp7QC4yte/M+2Nc
        N0XR3SYZP7x37vdjnaLTars=
X-Google-Smtp-Source: AA0mqf5nCD6P3owI0T0L/VEEQQiDcYVImKEfj1Y0AZ8fbDrh29ipgcfxp4cg0h4fYFl7xhVfESgtPg==
X-Received: by 2002:a05:600c:511b:b0:3d0:128a:6d1e with SMTP id o27-20020a05600c511b00b003d0128a6d1emr13503854wms.108.1670185405358;
        Sun, 04 Dec 2022 12:23:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v6-20020adfe286000000b00241f467f888sm12488883wri.74.2022.12.04.12.23.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:23:24 -0800 (PST)
Message-ID: <d8b948b4-4aa4-c391-9327-431e9f447527@gmail.com>
Date:   Sun, 4 Dec 2022 21:23:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page close.2
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090722.GA1155@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090722.GA1155@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QC1cY3RpkipyiFmN6pL2ly2Z"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------QC1cY3RpkipyiFmN6pL2ly2Z
Content-Type: multipart/mixed; boundary="------------x0F8dwtZdDKLzXBEte0IN8xe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <d8b948b4-4aa4-c391-9327-431e9f447527@gmail.com>
Subject: Re: Issue in man page close.2
References: <20221204090722.GA1155@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090722.GA1155@Debian-50-lenny-64-minimal>

--------------x0F8dwtZdDKLzXBEte0IN8xe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIC4gdGhlIOKGkiAuIFRoZQ0KDQpJIGRvbid0IGZpbmQgdGhhdCBpc3N1
ZSBpbiB0aGUgdGV4dCBxdW90ZWQgYmVsb3cuICBQbGVhc2UgY2hlY2suDQoNCkNoZWVycywN
Cg0KQWxleA0KDQo+IA0KPiAiT24gTGludXggKGFuZCBwb3NzaWJseSBzb21lIG90aGVyIHN5
c3RlbXMpLCB0aGUgYmVoYXZpb3IgaXMgZGlmZmVyZW50OiB0aGUiDQo+ICJibG9ja2luZyBJ
L08gc3lzdGVtIGNhbGwgaG9sZHMgYSByZWZlcmVuY2UgdG8gdGhlIHVuZGVybHlpbmcgb3Bl
biBmaWxlIg0KPiAiZGVzY3JpcHRpb24sIGFuZCB0aGlzIHJlZmVyZW5jZSBrZWVwcyB0aGUg
ZGVzY3JpcHRpb24gb3BlbiB1bnRpbCB0aGUgSS9PIg0KPiAic3lzdGVtIGNhbGwgY29tcGxl
dGVzLiAgKFNlZSBCPG9wZW4+KDIpICBmb3IgYSBkaXNjdXNzaW9uIG9mIG9wZW4gZmlsZSIN
Cj4gImRlc2NyaXB0aW9ucy4pICBUaHVzLCB0aGUgYmxvY2tpbmcgc3lzdGVtIGNhbGwgaW4g
dGhlIGZpcnN0IHRocmVhZCBtYXkiDQo+ICJzdWNjZXNzZnVsbHkgY29tcGxldGUgYWZ0ZXIg
dGhlIEI8Y2xvc2U+KCkgIGluIHRoZSBzZWNvbmQgdGhyZWFkLiINCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------x0F8dwtZdDKLzXBEte0IN8xe--

--------------QC1cY3RpkipyiFmN6pL2ly2Z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONAbsACgkQnowa+77/
2zI0zg/+NBFXdUA4Vpb+3UrhD7MU0ItmvS7weKEbpnxHDi0l2PIl5F/Tq7EOWL9Y
ZSKQTDBbZKLn66XY2X0dKsvml8DPn9J9tcXne5kYOnJqdBFg1QtvmWXdIEzhImDZ
lpVkPupUS1eARSDo8O5bHtOtZH+uthCrzpUwplZEtMs1NGs0gLITp/x3Bvjd44G5
Kc9go51IHEhh7CGKPin7GCdY+vFw0psBItfo2x1SCTJ4szDYGNFCblbf7e0S8U/Z
+lfbQd/ntzD2mf9lbj5Zi8zqDZ2c5bxFsn9twiUFsM7ZLwoHlkYUIOU6XRxGOjmu
zIQNttgweCCEGgDfpmu9ybRj9lZ9A2Zb9HtYAYQFvMvbxiSNNkpbsturKldYN/oE
hGZHETO6F0IC7v/GeFtATSur2E8dpSu940mtuZsJWdCjKWfFptbbj70FMY8+RsNE
V1GQHF1fXfYOcNnYNB2CFNeNxuxDY27Ptn6xtFFpIlWFhBcXKKehXADVzZahSDlk
ij0/RFvlL/lEPd1+hVDI4bU3j7TLcJcHt/7LduNGIYoiCUNDom1oudLMtQQbM/n/
Z3VKiqkKu1jkHlVpJ3QyFjcKpV//5IaBYV1MBwaWwjjGn4XY0b3NDDI9Z4IJNAD6
AZNDTY3MuKg/bTWt9EDHQXM3jg7Zcja+MU+TevDQ/RW8lem3mjY=
=KAk0
-----END PGP SIGNATURE-----

--------------QC1cY3RpkipyiFmN6pL2ly2Z--
