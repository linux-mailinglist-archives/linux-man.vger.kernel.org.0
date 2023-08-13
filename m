Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C05AA77AE40
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230170AbjHMWUk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:20:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229892AbjHMWUj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:20:39 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8611511D
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:20:38 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3a7d7de894bso2549786b6e.3
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691965238; x=1692570038;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/Y3VqeLaWOFVw7V9/6ZULNnkhxT2of8T6TEqF2rfMQ4=;
        b=ABjUpjX0CMlbgDSPOqiUgSDOKCl/Idx1pOi1eWd9PXnahbCXoABNIGvyHTR1o/G4SZ
         VDacZ/9gzIRTOdyMjTe5M0CqS2KY+kmz1OcNkkDLsPPeOIcNVHXwDTt9CIkdflTyajjw
         p6YCo5u8acPcFf+bCnpoloIg2hKP1tUyqjPk54yJH9laUbkyYRT7gCgLSeo+0uJFOAfR
         N8Qwz5HeP5FMqgS3hN7oj5s/e2qZWers7mUYxFXw/UQQg83wA9/h2IFionCbF26cKib6
         sirhsCGMWS9jyog3ng2BX7Rvj29nJx4xuHfrcUW6s2q1uf0AO+Mv1KmVwNtIWWSXFhbz
         lDkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691965238; x=1692570038;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Y3VqeLaWOFVw7V9/6ZULNnkhxT2of8T6TEqF2rfMQ4=;
        b=aRM8E6Se9Kxe78uJ78PnMcaXEyIxfzguW0n54aLVdMMGkCUm9e9DX1ANX+6ZhJ3kEJ
         8I3TQyBODF5W+3TCPf7qrxQSpH0kLz9ewJ0pPEMhEorfdhbmTh5Kfs0Px9POKIKiEfmv
         wVJlA5cDGvU43Bzz4Dn2nChOKa1PtMmu6S5iBZzS0tuT+N3nvvXOvpJuETsS5nwI1pb7
         FCyHhKi5hFv4OqpTeK3TD40ZugAtoeRJiLnEHdAwXxUGFyLHbJnXFUOWuqT8gt29idVp
         2/7VChP04x+drg0ZcNlg6w3J9eJHtcFqrxFiMtU9u7nqoh7Lv2CRkmY0DhsNT+Bcex0D
         ZKpA==
X-Gm-Message-State: AOJu0YwtFt2tXSTOAckCaFnNtzBO2c8EpRA+5RUpnEIsIlbG4fMoCGgz
        tTaKiF1KjvncXKIR1acbgoM76Qsn9cY=
X-Google-Smtp-Source: AGHT+IHeFnGuN6oOG/AtS4WaSBoC/0lNC7vvyqAhBCv3CFr6EXjBl3is/gY4fOtmI8YWuQK7DEnbcg==
X-Received: by 2002:a05:6808:2986:b0:3a3:ed41:97d with SMTP id ex6-20020a056808298600b003a3ed41097dmr6387520oib.50.1691965237783;
        Sun, 13 Aug 2023 15:20:37 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u30-20020a056808151e00b003a76d7f596esm3901698oiw.54.2023.08.13.15.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 15:20:37 -0700 (PDT)
Date:   Sun, 13 Aug 2023 17:20:35 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Message-ID: <20230813222035.a5ybcqbpnzlapraz@illithid>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bssas4wq36bnipdb"
Content-Disposition: inline
In-Reply-To: <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bssas4wq36bnipdb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-08-13T23:30:30+0200, Alejandro Colomar wrote:
> And also, I don't even have the sources, which makes things more
> complex.
>=20
> I wish that POSIX allowed us to have a copy of the original source
> code of the POSIX manual in the git repository.  With that, I'd find
> it more interesting to maintain the project again.
>=20
> I'd also like to know what's the original source code of POSIX's
> manual, because it may very well be roff(7).  If that happens to be
> true, I'd like to have access to that source, instead of the HTML.

My understanding from hermetic comments to the Austin Group mailing list
over the years is that:

1. they have used groff for many years (a decade or more);
2. they don't use man(7) for their man pages (I was told this directly);

and

3. they use (a customized version of) mm(7)--or I _think_ I saw someone
   say this, but I have no citation and I am not even sure it was an
   Open Group employee who claimed it.

We fixed a bunch of bugs in GNU mm for groff 1.23.0.[1]  I wonder if
they will be cross with me about that.  Even if they didn't rely on any
erstwhile misbehavior, the source churned, some internals changed, and
if they patched the package, I wouldn't count on the patches still
applying cleanly.

> Would you mind forwarding my rage towards the Open group, which IMO is
> not so open?

Maybe scrape off the rage first, or you might get a response from Robert
Elz, who is even more cantankerous and writes at even greater length
than I do.  ;-)

Some time ago I solicited bug reports against groff from them.  So far,
nothing, unless they filed anonymously.

Regards,
Branden

[1] https://savannah.gnu.org/bugs/index.php?go_report=3DApply&group=3Dgroff=
&func=3Dbrowse&set=3Dcustom&msort=3D0&report_id=3D225&advsrch=3D0&bug_id=3D=
&summary=3D&submitted_by=3D0&resolution_id=3D1&assigned_to=3D0&bug_group_id=
=3D0&status_id=3D3&severity=3D0&category_id=3D121&plan_release_id=3D103&his=
tory_search=3D0&history_field=3D0&history_event=3Dmodified&history_date_day=
fd=3D13&history_date_monthfd=3D8&history_date_yearfd=3D2023&chunksz=3D50&sp=
amscore=3D5&boxoptionwanted=3D1#options

--bssas4wq36bnipdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTZVysACgkQ0Z6cfXEm
bc4mVw//cJnmiylaav1kRLsFNwF+0Iw0g3CK9OrI47BoUTRPRaDB/3Tz7La27+LS
kvcvnIzNHA8b30/JwIEQjc4MsIDr7vaSm3Ci8DMAqo2mulqAkoi7a/IRjnWSb58o
E1ONDMzZCJHXQ05CYZvYN6r/6+USNSqTO9F0TFa49aLpk55CtiDkwiU89lQ4Ky/a
btjpGr8I8tOzLAZknVNsddpEv8KCN1FYJV/bmfGNvdoRRoW7xvVUY0tE0UKrTcj2
Bmrt27uysCq89OLOJ6NJkQxFNxFwFM0mGg0yGY62YBPuylgM3zE4sLUVu0bPdbIw
QHmdfOcUeKydIRKLOp4ButjF5ysp2ltUq1dOeQngRLtnO8Qm/2A7qOjm6j1d5lOX
DP4WdKoc36veAjWFooFafS7uFS5IA6PZR4M5Bh28IQmorGQAr1FckiJUnZpIhCn6
ceyKTVGqkqHY9VmtXqceLiE0/ll8MKe+PND2l+XpJpnFD6nxVo9urw23F/6OU5MD
Qsco2o+tcde7X3e5YHWghJMV3G1ZadKjIDz5ffJGro8wLbPKXpdMhjLK2G3aXIVx
f1pQA755ZyenZiaiYQxlXm98iCexzZjLbelMk21FodUg0G0ihowqRssWrFmHGpJn
TOhkd0pf126u5qO+g7oQt16ad2ypf9mCZ2gxNR7CmqkWaSF7dcI=
=TPza
-----END PGP SIGNATURE-----

--bssas4wq36bnipdb--
