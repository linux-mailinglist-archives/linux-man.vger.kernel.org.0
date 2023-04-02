Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A0256D3811
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 15:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjDBNQx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 2 Apr 2023 09:16:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjDBNQv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 2 Apr 2023 09:16:51 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 931D211155
        for <linux-man@vger.kernel.org>; Sun,  2 Apr 2023 06:16:49 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id l12so26700866wrm.10
        for <linux-man@vger.kernel.org>; Sun, 02 Apr 2023 06:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680441408; x=1683033408;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZUkdpY8p9C2goINmZ+ivQlc4SGemV2AQAoUWyn3DPW8=;
        b=JFI+jqetSqygFHT1plJcT+BiiIUlxEHCvAGJTyypGK45R0vxA8eh5ZQNCnCuL4cbkK
         CeNex3dmAhLpWZsJYJRIuXhvApcwzJGG9eK5JEbVjV0QodPX3O7sXLSQFHgCoulQgdZQ
         RYkP3Kpk+YtSrcwiDawFEsUVsIp+Tc1FmnC2k60PiZ4XihJEHUHFJ9e7QEoUF/QYKI0W
         OB1Ch6P8Dd5v9TAoNKzGnNqskkk965VSTfAyKtWwdu7xrJVavQPvZNvryNlQaRsaa3KT
         grDoJySkPqCnaEyZFD/oCRwSyAmilISkAXQnILrwBKcZMMPnNE+g2XyZcYJXpmrY9YMT
         UWRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680441408; x=1683033408;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZUkdpY8p9C2goINmZ+ivQlc4SGemV2AQAoUWyn3DPW8=;
        b=NTpDYXlZVUKlCFnBx1SHQuZK/Lf20vSaUS3ZWxgVVCn0leKiUVR/GcrL75YcjUN3Zt
         W3lpqpwX3AGacRpdb/eezTFeNmjWm+tIeTxBlK93fYutGDzws3W+If7DeAFks+d6Rp9w
         mW5OwvGHm97PqO6+thIKY5dfvJfSk4dAy3LYCC77BsYMljPmhuVZmCHaeBqb3m25CPin
         YvMrvI2LV7Mq9+3xLWCTNwizB/9BUgdRCGOaP/gAfpIySUA/Gc0SdIDxAyCpAFFr7csz
         P819Av5YbC8kh0oMiZhTTp1buRDMpqvCDQtl5ekUT+O9f9gt4iKL7Tg1DL3zezgLIxFf
         wVTw==
X-Gm-Message-State: AAQBX9dSkOLNAgGiaGDd0bFltSUCt9qGN3BAr84asYHtfxcvUqCE0l5b
        3UJBj8ffhV1GV7y0jwAGsbgh2pBokDI=
X-Google-Smtp-Source: AKy350ZWaZvtmKwoPyFRs4Gp3wBx/lk3J1455toMkcLwxqmGCfIEqylm3n0Ik8HTHXa8omYXo3jiZQ==
X-Received: by 2002:adf:e8ca:0:b0:2d0:a74a:2b15 with SMTP id k10-20020adfe8ca000000b002d0a74a2b15mr26425678wrn.37.1680441407964;
        Sun, 02 Apr 2023 06:16:47 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id r8-20020adfdc88000000b002de99432fc8sm7298490wrj.49.2023.04.02.06.16.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 06:16:47 -0700 (PDT)
Message-ID: <79973f81-d6b8-d037-b38a-95a630edbee3@gmail.com>
Date:   Sun, 2 Apr 2023 15:16:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Usefulness of make -t
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "bug-make@gnu.org" <bug-make@gnu.org>, Paul Smith <psmith@gnu.org>
Cc:     Sergei Trofimovich <slyich@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <00fce115-146e-0501-4449-5366be048eef@gmail.com>
In-Reply-To: <00fce115-146e-0501-4449-5366be048eef@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0Ffg27obgfloHFMIB33ubfHl"
X-Spam-Status: No, score=-2.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0Ffg27obgfloHFMIB33ubfHl
Content-Type: multipart/mixed; boundary="------------B9dBQHd0XTzxXB0ja8pRgeNY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "bug-make@gnu.org" <bug-make@gnu.org>, Paul Smith <psmith@gnu.org>
Cc: Sergei Trofimovich <slyich@gmail.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <79973f81-d6b8-d037-b38a-95a630edbee3@gmail.com>
Subject: Re: Usefulness of make -t
References: <00fce115-146e-0501-4449-5366be048eef@gmail.com>
In-Reply-To: <00fce115-146e-0501-4449-5366be048eef@gmail.com>

--------------B9dBQHd0XTzxXB0ja8pRgeNY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/2/23 14:20, Alejandro Colomar wrote:
> Hi Paul,
>=20
> Yesterday I found another use of make's -t flag: It helps make sure
> that the logic in the Makefile is correct.  You could run the target
> without -t, but then you risk seeing warnings and errors from the
> commands run by the target before make's own ones, which would hide
> Makefile problems.
>=20
> If you run `make -kstj [target(s)]` after modifying a Makefile, it
> will show only and all^Wmost problems in the Makefile itself.  It
> could be especially useful with 4.4's --shuffle, although I don't
> have it yet in Debian Sid :(.  I should build from source and try it.
>=20
> I'll start using that as a rule to check changes to Makefiles, and
> hopefully will avoid introducing bugs that I need to fix in the next
> commit :)
>=20
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D5bf82f50cf02ded2403666d6c1ee2878b8bd602e>

Running this a few times works like a charm:

    $ make -kstj --shuffle >/dev/null; make clean >/dev/null

Very recommended :)

>=20
> Cheers,
> Alex
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------B9dBQHd0XTzxXB0ja8pRgeNY--

--------------0Ffg27obgfloHFMIB33ubfHl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQpgDcACgkQnowa+77/
2zJCKA//SfqNsvMZC/HMIKHL5Pu2kYuX5bI403KTXbin6zeGw4/f20YFcG/X1y4k
xL9Yvb6IkjjndhmIa5mr5+FItAk/yIBroZWAdCVI0FVpzrn1wsfohNSMHjtVXuXN
/kZdjv/1dO8K6x4JM/JeT2RKiDUNa8y6BYVFG/xjYHgfw3/rMRkUkIPxPugejCGc
DGSETvgApBI/SgZ21SnW3nwEIpOVgpZkG9FFPhCPERnJomtY7K4kH11tQmPKWn2/
hQR08sZIb51U9O3VICb5IYTbua7maHYgmUXswr6CWfo2LIl9lFlVrDpgzE36//1n
R+FFecf+NnKiLXAYVyosrFNYGxiaw2woAajOlDan0Fn8y0g16tHFgme6omu867GR
0Q/J8iraohqKbnbO3N3d+lm+3O5LGiks9glRJB3dNfx53KM41zNlWV61QH2NoNED
u96md1L+wmkBhADv4MqFFWYO+uz+0qLFvEubkiEAaoy609ASZ00MsXngLFlbggD1
PHh371xTKo83dJPs6h37+GMYWPbcvPuP9Kvthb0ycwIFHIjaewI2KQyQ60GReVBY
d5WaHPlQ/UboRx1BupqIll9GZm+ylIv3XTj9jY/1ABtH6H0waCSmeJubSD0zjEgQ
AGOIjhnymsLCJ3fsNXCUE65EW0Uaz8cGkLh9cxGRomxeV90ibNw=
=odjq
-----END PGP SIGNATURE-----

--------------0Ffg27obgfloHFMIB33ubfHl--
