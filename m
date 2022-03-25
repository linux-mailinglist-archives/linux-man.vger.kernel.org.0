Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F0A54E6D06
	for <lists+linux-man@lfdr.de>; Fri, 25 Mar 2022 05:14:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237977AbiCYEPw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Mar 2022 00:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232001AbiCYEPv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Mar 2022 00:15:51 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AEE93ED35
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 21:14:18 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id w8so6857160pll.10
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 21:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=j3tn2wT7bJ5DBxoAqLkMtkeboAUsmD5l6Y58Fn+u7xY=;
        b=U13iXLhySmdsW8hMfPjdYhD6E5SvYFWVTd5qGak+NPTGeWjvss7CQo3Ap+aeywC+/O
         znoXJP0Yk9yP5F7pjjmcMf3JmMMbLT46sbtE21YQvHXdIyIsP0wAGiRuUYkwuzh8Ni5B
         rQliFjl0OPZmxEWAR/w/9BjQdAn0+4DdusMonfJn+j15l5d0uZ7D+pgedXUCC1n1Xw5U
         hfzwKE4bH/rXiTMfICGeMbansIp/V5QwRja8mKKinFoCWfNlCshJW+5XTmdtc0a0tNPS
         MMfMiz3vw1qaK5fvAoRymJljQVl3TRD5e13b4iXuMmt5PaPA5ZejwTHWE7lbbYnbnvHt
         tiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=j3tn2wT7bJ5DBxoAqLkMtkeboAUsmD5l6Y58Fn+u7xY=;
        b=Q42PpqMnr2FpkRxgnJsalHOH1eO6T7vrWbiGqd/+BdSC1o8GeLXAaqWEEvUNxhx1Og
         Rg1cDDdcf9r+5WUwWin2u4r2FPM5DScBWt7wWi90wLPzD8n9EmPtxV2jreaWKAJR2J0y
         31hkrxfcPK4sTvFpnQWufSC9SpwYNghuIiXd9vnParZbSHFDXofQ/pHVhJBT78eekiPw
         keFF0vwOX5+M6T7lW5Zk+Q5IYQeSaiLbxva6ldalJWDx+q16+xN5v1/3VCJQH9FbqGIs
         HogzpypmOE+JOis8tDNJCrxoY2M1pDtG7d0cgoZ+0SFkvcOdcvlpthN56NaHMljXj13l
         ZpKw==
X-Gm-Message-State: AOAM532p087Sgl/OGWCAMt4hHh0a2tWR2ELwfkVYrvMa0cqbyX7aLwbp
        9mw8g+E0ycna1GClLCsxNVo=
X-Google-Smtp-Source: ABdhPJwyLn6xkSyy5YR2f/rP6of0EezwujkcTi3hqSM3s+uDDHxKf/Mm5FlYR4ND//Sg2ZO6tDtt6A==
X-Received: by 2002:a17:902:c401:b0:154:3b8a:5e6e with SMTP id k1-20020a170902c40100b001543b8a5e6emr9312490plk.18.1648181657284;
        Thu, 24 Mar 2022 21:14:17 -0700 (PDT)
Received: from localhost.localdomain ([1.145.30.29])
        by smtp.gmail.com with ESMTPSA id q3-20020a63ae03000000b003820cc3a451sm3852276pgf.45.2022.03.24.21.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 21:14:16 -0700 (PDT)
Date:   Fri, 25 Mar 2022 15:14:12 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
Subject: automated example verification in the groff Texinfo manual
Message-ID: <20220325041411.7532dbtfecextgfo@localhost.localdomain>
References: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
 <Yjeb9VPXl0+ITuIr@asta-kit.de>
 <7559214e-bef1-f52d-a716-19ea31ee149b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yef3guek2zq2ecrm"
Content-Disposition: inline
In-Reply-To: <7559214e-bef1-f52d-a716-19ea31ee149b@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yef3guek2zq2ecrm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[subject changed; steve@sk2.org dropped from CC list since he's not
quoted]

At 2022-03-20T22:55:48+0100, Alejandro Colomar (man-pages) wrote:
> On 3/20/22 22:26, Ingo Schwarze wrote:
> > Alejandro Colomar (man-pages) wrote on Sun, Mar 20, 2022 at 09:34:47PM =
+0100:
> >=20
> >> I have ready some code to extract source code from EXAMPLES in
> >> man-pages.
> >=20
> > Frankly, i don't see the point at all.
> >=20
> > Manual Pages are not HOWTO documents that mindless users are
> > supposed to copy from verbatim without understanding what they see.
> > Instead, the are supposed to be read with your brain switched on and
> > the reader is supposed to *apply* what they learnt, not copy it.
>=20
> This feature is not supposed to be used by manual page readers
> (users), but by manual page editors.

Indeed.  For quite a while I've had medium-term plans to do something
similar for the many examples in the groff Texinfo manual.  I want to be
sure they remain accurate.

Here's my sketch for whenever I get back around to this idea.

1. Extract examples with, e.g., 'sed -n '/^@Example/,/^@endExample/'.[1]
2. Use Texinfo comment lines within this example to:

   2a. identify the example (an invisible figure caption, if you will);

   and

   2b. specify additional transformations that should take place on the
       input and/or output--these are not necessarily just more 's' sed
       commands but possibly 'i' and 'd' commands as well.

As an example of an 'i' use case, the line length _has_ to be shortened
for many examples to fit within DVI/PDF page margins.  We note this in
the front matter of the current version of the manual[1], but I'm
uncertain of the utility of having it literally present in every case
(particularly in examples related to issues conceptually distant from
line length and/or breaking).

In some cases, either input or output is wholly elided when it sheds no
further light.

I don't envision changing the manual generation process to _populate_
the examples--that should be done carefully and by hand by someone with
a pedagogue's hat on.  The idea is to _validate_ the examples, reading
them in, performing a few invariant sed substitutions (the ones that
distinguish input, output, and error streams in the example text),
perform any further specified sed operations encoded as Texinfo
comments, and then run groff and verify that they match.

Since it would run this way, I reckon it can become just another test in
our suite.  (For those who don't follow groff development, groff 1.22.4
shipped with 3 tests.  groff 1.23 can be expected to have at least 111.)

Regards,
Branden

[1] These are custom Texinfo macros defined by the groff manual.
[2] https://git.savannah.gnu.org/cgit/groff.git/tree/doc/groff.texi#n901

--yef3guek2zq2ecrm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmI9QYsACgkQ0Z6cfXEm
bc7dbQ//TWdxHMasKn5c8YvlZ7E0UFJyMOL72SN3z+y6+ZpaF4vSdaROEvkB/xsk
/QPAvf4ulLYwNbUtJNfjc72IW9cniGgUmE5qLY6355TFksXtD07CtmQXDdyUl1wQ
nI7rbbp0aZQaq9eqXzRdMXIkXrjW6kOxigYEENkvYEeMouOGxHiDt4eRRylAHwgr
GVCXZpRSnzb/teQvccNxMir8Os9LBlhPmSlSeVjz8UdgZAddxWqgXlF9wBo5TApO
Uojn+0gCvWL0yaPqtHsCvmGw5tkh0PlWYbS8zPcYif8rR/Fz4wyO5kiEFidXRHkX
Vtm50zEiMOSFpZFLvLskUF9gSdpcjwn2MO6mnKgVkLHfWN/FSf9bdfr9NmS28yOk
LpaaKto7uXBaIDPxnQW93p2DJu5MIrLb8mwRQBI2tr1ZXDYOQHPARmzuzx8qw5lT
BBUo3UhzL3rJZrNael6ezkZmltbS1ltEShPqHSkigjBlYoEPrQE5yyUfXkRv1fUI
mJHP981qC1oN7a6Y3eXS4xr4YyxVNPxo17mrq7EV386O4mkxvRyQTAJl7WdoaXU2
d6dFn9L6vZ/10Jk8/EIAFquMTTtZhqe/4V6WmKY6USHNBDk1YTVPi7yxvrAgMKvD
psEUYAbaO94AHK8uueWeC+Zy7MfwITtPS4lDg+QVN/czhi67Hd8=
=GOXj
-----END PGP SIGNATURE-----

--yef3guek2zq2ecrm--
