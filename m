Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02C216EA2F2
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 07:01:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbjDUFBD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 01:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbjDUFBB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 01:01:01 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66ADF30DF
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 22:01:00 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6a438f0d9c9so1390233a34.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 22:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682053258; x=1684645258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F71Iflms5BfsPx5yNHwoEEgPwniHqO7o3K+YTYEUr5s=;
        b=feo2gAK1eEc4+2x1RJfRedMQ2tzudnGDP7R+RTgwuIvD7sVOAdYaj1d+SDjSSGiXeV
         iRoKvB9l/F1Rx8jegwEfARO5AA2CYatgB0UUZ3Afjl3wDhBJXmNRWWS30VPup8V08LLS
         SKIf7NxDsgu5XOluYUW8yyw2fNzd55MrZHkGbQFDy5Om4bYKaQds++yzx4ihyv/Bg730
         H3EcO6Kh2+HpSXyvVobY+Z1nwERPpxKIatHUOzeT6+xQtB/KSiRRlx1dpXrJHmwqXFxx
         yhHSQCmGJPkVCA578YGem+9936Gq0kSwURSCMTfJgoVzSWpygn3vn2OV/WvLeLF+CC9B
         WMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682053258; x=1684645258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F71Iflms5BfsPx5yNHwoEEgPwniHqO7o3K+YTYEUr5s=;
        b=MDtVWRynJdCDuEGNeJR0gloG0aWoYEddL2MSv4idad+lIe4cC+YQbuaNDoAZ+3ZDx6
         oUdeOeJnG27XrOy94bXinBdlI73sGsgQVRWx4cYRdTCXZhv2gYT4WmqfssTveDH2OyXs
         9hW0WZHp+d4SjZjEnBAwx+S0kQeSkq62LGFJmJJ9QiDHfRXFG8lVD0x72jdtT5HpNgSe
         xrPIPYTe1/2nL1v378j+s7U8/EdcsZzzjODJIw+tiysgwSVDU5VyLVtiaQlZ6wnYOzMK
         TgJAwjmwvpV4u58poibXBKjziU0zpR7jEBNWZlLw0nBvFtYUkAOngC0GV75IXnvRuhBp
         jCZw==
X-Gm-Message-State: AAQBX9dor/9q9vv+hGWPXLoVtPKGb3HiqEiuCFkVtDZPLirqXm0A/iqV
        HnBjeRTu6BGb11EY8gWBg99BhYdobDA=
X-Google-Smtp-Source: AKy350aWtmUvS2RKaGrEag63ZS0cTNa8qeIfmMuSXjbKfOqeT5GkB9bCIV8N6P57NMDGs4NyniWNOA==
X-Received: by 2002:a9d:638c:0:b0:6a4:4c45:406c with SMTP id w12-20020a9d638c000000b006a44c45406cmr1950491otk.0.1682053258339;
        Thu, 20 Apr 2023 22:00:58 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e5-20020a9d7305000000b0069f9203967bsm1425928otk.76.2023.04.20.22.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 22:00:57 -0700 (PDT)
Date:   Fri, 21 Apr 2023 00:00:56 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org, groff <groff@gnu.org>
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Message-ID: <20230421050056.i2tuhdovzczap7z3@illithid>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
 <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
 <20230420183300.nsw4lh2c27lwsnrs@illithid>
 <4045b975-c79d-a2b5-f180-fcdafe7290a1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dgcfj2rtj75vhx6v"
Content-Disposition: inline
In-Reply-To: <4045b975-c79d-a2b5-f180-fcdafe7290a1@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dgcfj2rtj75vhx6v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-04-21T00:29:12+0200, Alejandro Colomar wrote:
> On 4/20/23 20:33, G. Branden Robinson wrote:
> > [Note for non-mdoc(7) speakers: `Sx` is its macro for (sub)section
> > heading cross references.  man(7) doesn't have an equivalent, though
> > if there is demand, I'm happy to implement one.  :D]
>=20
> I've been delaying my global switch to non-shouting sexion headings,
> due to not having a clear idea of how to refer to them.

Fair.

> Having a macro that does that for me, and ensures that the appropriate
> formatting is applied might be a good solution.

Well, I have three ideas.

1.  Mark them up the way the groff man pages do, in typographer's
    quotes.

See \[lq]Match offsets\[rq] in
=2EMR regex 3 .

2.  I could implement the `Q` quotation macro for man(7) that I've been
    making noise about for a while.[1]  Of course, you'd be waiting for
    the next release _after_ groff 1.23.0 for it...

See
=2EQ "Match offsets"
in
=2EMR regex 3 .

3.  I could implement a macro explicitly tuned to the problem of
    (sub)section cross references.  I didn't see anybody come up with a
    good way to shoehorn this functionality into `MR`, so I suggest the
    following.

=2ESR section-or-subsection-title [page-topic page-section [trailing-punct]

See
=2ESR "Match offsets" regex 3 .
=2E
Also see
=2ESR Bugs
below.

In this design, if argument 2 is present, argument 3 is mandatory.

The foregoing would render as

       See =E2=80=9CMatch offsets=E2=80=9D (regex(3)).  Also see =E2=80=9CB=
ugs=E2=80=9D below.

On devices supporting hyperlinks, "Match offsets" would be a hyperlink
with a to-be-determined anchor reference.  "regex(3)" would be a
hyperlink as with the `MR` macro today.  "Bugs" would be a hyperlink
with a to-be-determined anchor reference within the current document.
(OSC 8 support for this may require some thought, or maybe we'd just
handle them like external page references.)

I trust the tradeoffs involved with each of the above solutions are
readily apparent.

> It would also please the info(1) people, so that the few references we
> have to those would be linked.

What's the URL format for hyperlinks into Info documents?  How is the
existing .UR/.UE inadequate?

Regards,
Branden

[1] https://mail.gnu.org/archive/html/groff/2022-12/msg00078.html

--dgcfj2rtj75vhx6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRCGIEACgkQ0Z6cfXEm
bc702g//VPoA1DjKjEvhs03V4LZwOJsYvV0s25g8SDGK+tYGqMjGUAbMSwQKzWaL
xd5I6viqdJJDz7VD9or/FCvb1nlVwQ9qmlT1+Uu2fFrI4gPMain4UBRGgGDcqL1q
ArxOGAiX5IuEYdxDsZqbd6g8kyaFkIfXWOIvXMh7tsoBOQOmp0CtO6ejwRvfnDpK
w2n5/VJAB+YcPAo2FWrCn6WOMHKO18n7uR1we+W9x0bLKCfjEutUwLLIYY8nbA7o
ZaNsR4JMEOSRwhTrS8RlyNepzSOWq/p7AdlSuto1WLvB0Zp6bxBGQFZS3KgMUghW
2vXZPkMDrJrbS4+dWXtQJKYf/Xxs0n3fKEwIsWT0PuIMd/PilEYf81MQqSLtYxTC
u1KV5jWRF4BE0WxOWRBpfx1Qcxbkp4eJ6iy9mN2ew53LMPqWPORCOz6DB5sHLgwx
0dl3IuJERyax5ljRIGGGNlIbCODXcwaHoRfEM54PN1fJkgE4/WDwFjFkqtij0EpY
r74F7S4L2o5hvI21tq4z92ut44cjBsMgEFqF5dL8K1+Cx/oycqqTGtHlLM0r6wQK
LEeOXfG2VMbOAn1cD0UWE0Za7nLfrqyD+23B4qqbbWswg+O0u+CN63qR1IlcxzJ6
+OJDGNUIC1uApDDfPHCEahblpRuZCSq2XjzR/hK45ZIvNZNH2Rw=
=i13K
-----END PGP SIGNATURE-----

--dgcfj2rtj75vhx6v--
