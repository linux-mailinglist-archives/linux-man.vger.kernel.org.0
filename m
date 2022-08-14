Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADEBA5926D5
	for <lists+linux-man@lfdr.de>; Mon, 15 Aug 2022 00:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbiHNWfe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 18:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiHNWfd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 18:35:33 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02838CE10
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 15:35:32 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id t8so653562oie.8
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 15:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=cKHsbzBLL0yFyk0bu+O04vWxyarOOYQ1TM/RFQJ1DsY=;
        b=dAeJxaPIzRxktDAqQlusKf7JqN2gk+GB12NXDDbjjKatJkM3g+h4ZiABXGfDrUDI8T
         vfRM6DHPIoAUZrRZDgbTYuRJ4QatFEEYa3QqHiohCXAlb0nGExANZDQBJx2VbUSYer4l
         pFo4DKwWTvKJ5ow0kEcZEtoND+sKHkuCtnX/h2R6lhwK1/O+zsWBslO5r724sYniL2b7
         o7dhVKAoV9gIJ9NVkAHHGTrpheVFRPKIHnL2V77r75Bp+ZpRzSOTdwwov3tRFkpZgia6
         1SNn9ujTjyjDt1D+rC7Drxnsm//+3nPqATnS5hvTaHpyFISMKhzdRWSniwO5jsbnenEb
         i5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=cKHsbzBLL0yFyk0bu+O04vWxyarOOYQ1TM/RFQJ1DsY=;
        b=Hw0bSz8pvx9RDCGbGsB1vBsxQwKJDKOV0SrFGN4E9zDr9B9W+0/G2IJ2I41N2iaugu
         rY9kDcfo4rLNVk8SV3ao0+8P00nc4BYZ6djW/UVodfy2Z99tt4OWLnKm7Sw0dDys4xNb
         4p+fzxrnsGWtOdXe2kX9ucVXCmDS+AuWNvogqobOGzYFhWaQhVMK3CVJMoQiL3mdF72I
         wf+xooWChhV/X7UiMJy9rrQdkNfj6CYp2onHdVHh8tUEXxM78xQ1mc8yMCegW3sJiUGi
         RMGw7TYyUtP4I7B4WeBiVxPi/t/gsioUux3M58vLfXx7jwS8efpc/lqPvveviYBP+dRF
         WxQw==
X-Gm-Message-State: ACgBeo1uDILaCgUT3uTRMBgCMGhomEtD8+1kMTJ4AI1hKom+oOU1c4ml
        01np9WDkd8vIMr1q7/caV+I=
X-Google-Smtp-Source: AA6agR5QHeSjnu5WaL77m9nnzHTF+JOxqYjy2yJ3iATLCrEfMIFZRJhrNnWMdXNkQz8CtvQ1cJP/9g==
X-Received: by 2002:a05:6808:1495:b0:344:c442:6ca1 with SMTP id e21-20020a056808149500b00344c4426ca1mr180997oiw.80.1660516531229;
        Sun, 14 Aug 2022 15:35:31 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l128-20020acabb86000000b00342df642fd3sm1533825oif.48.2022.08.14.15.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Aug 2022 15:35:30 -0700 (PDT)
Date:   Sun, 14 Aug 2022 17:35:29 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     DJ Chase <u9000@posteo.mx>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Standardize roff (was: *roff `\~` support)
Message-ID: <20220814223529.tibd5roy5mtds3xv@illithid>
References: <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
 <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface>
 <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bxw4wzga6u3ohgjq"
Content-Disposition: inline
In-Reply-To: <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bxw4wzga6u3ohgjq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-08-14T14:49:10+0000, DJ Chase wrote:
> On Sun Aug 14, 2022 at 9:56 AM EDT, Ingo Schwarze wrote:
> > DJ Chase wrote on Sat, Aug 13, 2022 at 05:27:34PM +0000:
> >
> > > Have we ever considered a de jure *roff standard?
> >
> > No, i think that would be pure madness given the amount of working
> > time available in any of the roff projects.

Mark your calendars--Ingo and I are in substantial agreement.  ;-)

> This is very sad to hear.

I think the take-away here is that the decision to formally standardize
a technology, like many things, is an economic one.  There are costs and
benefits.  Being seduced by the benefits without a full understanding of
the costs often leads to remorse.  (And, in many domains, fat
commissions for sales personnel.)

> That=E2=80=99s probably because *I* massively overrate the importance of
> standardization (I mean I literally carry a standards binder with me).
> Still, though, it=E2=80=99s rather annoying that end users =E2=80=94 espe=
cially
> programmers =E2=80=94 don=E2=80=99t value standards as much.

I think it is less that programmers value standards in the wrong amount,
than that they disregard them for the wrong reasons--like "moving fast"
and building fragile solutions that will cost more on the back end after
higher-paid decision makers have moved on to greener pastures.

Nothing succeeds like handing your successor a trash fire.

> Would an informal de jure standard

You just defined "de facto standard".  ;-)

"De jure" is Latin for "of the law".  If something is not codified in
"law", or a normative document like a formal standard, then what is
"standard" is simply the intersection of prevailing practices.

> be of any use? Like how TOML just has a specification, but it=E2=80=99s
> somewhat usable as a standard because it=E2=80=99s been pretty stable and
> because it=E2=80=99s written clearly enough.

A purely descriptive document, mainly comprising a matrix of features
with escape sequence, request, and predefined register names on one axis
and the names of implementations on the other, with version numbers and
commentary populating the elements, could be a useful thing to have.

Regards,
Branden

--bxw4wzga6u3ohgjq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmL5eKkACgkQ0Z6cfXEm
bc4fTxAAgeM5oSRLmRjrcHIPtSogSG6BOAIMuftPvNI1BbhXf2mWBKYILowCTJhC
dJwvPifa0SNREj57y5FHRn13JVjw+iFIWZ9xg2oVJCxoLZKr3HCtW3cRsj5gh3j9
U1zsiwaC5d8NFRASy0aeqIYmRViC9943tfaefDGWzp01WsCYzUIm89RdjEEh/JB8
0pkKwRy6JPG8YTzl0N9Fto7LtVWRDXu3+HEOEsBBrNDbo0ylGM0ZkQG9h2M4GRjj
H4NDOlXF7Idr5crn8MY7S9KnxgnrVbmx/Ap3Kp4Oo/noQZokOKE5U9VfRIWhWFZ4
EA/OXDHhELEScWI9ySf40kHeDO/CVqxKVJ3DcGpo16zDG0tivxauN4y5Hd5hF/GB
XlQt3Afe95xZcif2SWznBpu//3btF7o+ysN5WO+bkpLJFMlQafhH24ATOtbRL14K
5zpASBqJvm2akXlzpH2d7HTI6J74Z6dQc2PuN+9kLqgvaPGj/7eHhxOSq5wRGC7u
O/I1+FUS56sKZufWBGYdG6HhkEZXBDbpJL2f2czjs0RDt0eLkWr9Wx8O5xn236rz
1aw+ZAgBttVLxLuralHJXmv3qbw6EUUR7XX2Li2gIaJ/h7BIetpAhMybU9zvlu0Y
/bBo0s3Ns3YXTYbkFMXS/sJ3Xy5ZzXApkXmH8W/eFFE6wAaSq4s=
=4cvj
-----END PGP SIGNATURE-----

--bxw4wzga6u3ohgjq--
