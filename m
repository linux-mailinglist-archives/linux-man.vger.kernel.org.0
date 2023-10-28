Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF387DA723
	for <lists+linux-man@lfdr.de>; Sat, 28 Oct 2023 15:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbjJ1NNd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Oct 2023 09:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjJ1NNc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Oct 2023 09:13:32 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 002A0C2
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 06:13:28 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-581edcde26cso1862161eaf.1
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 06:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698498808; x=1699103608; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CSQM76f4YZ2dCHBrdfQY2/IZjxDrPf7Pqvmn10TTozE=;
        b=D7d5IROWltjA3gpWm959g/Rz9DxJYFGiuSdPwplOq8VHXA4pkssPoYbnuUofwchwIE
         omAB7pm3FTNS6LOdqJelt/MAAa9bqZLooZzkBPDbDn+5hq7ZOKSt3VrfxilKP7Y+94mx
         IHmz3FGHWMCPOgEdvtRH9+D6aD1nppJwNZ4NbXfOR+NhNtAu+2qPogot7kwnw85l9Sly
         TKeqTWiy0Qag8CKkihuevYA6EPzOAUkWU7d0kU3lWm3UHdeX1hHo+5tybeWCgXvwU+n6
         AP8cnU777pKpaFMuYO1yOjg41csLWC49nLvX1o4X2O3U0jpesugLhBSxCesQE0ChLBdD
         CR+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698498808; x=1699103608;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CSQM76f4YZ2dCHBrdfQY2/IZjxDrPf7Pqvmn10TTozE=;
        b=GGfzqBj7VNkCHpAWrFSnMK4kUr1CJ3F6JEOh3EIO8dRL//Bn/AsH+0d8PVpdzv+PjT
         Qejh4YK7uwKD8vG+OX3Za4mY4vWPvlJNZGoOpN7HEaNPEb00LkNYqei2snWEnLRLXK6X
         ByVNssPHscZGxQOdUkGNwxrBkgAzfuxZQoBWo/UU5dTNtGZwG8NajYjaEbX05v6niw0x
         LfMi6nvPOjZXKG110t5nP4AX4kOf5T5n3KxT6u3eFgM5/x4jYfVxYMp1oxzpsyWpk7Cd
         ei+XPsa7o7iDMeSow5I7tsIX1qFq9inpSOC6/6Mr8jN0TT4dd2BM7Fu3ALFd+mRUe3Oh
         FWoQ==
X-Gm-Message-State: AOJu0YwP4w4GS44+yMub+318OU8t14lT/uH+dDZQN8c3iwUPAYM5f574
        Ko5UaR+CXwwqeZIQ2IouMK8=
X-Google-Smtp-Source: AGHT+IH29ROLOi/iwJ/Lhm/2VZlFbZr7h5tbdpRNQdlnP+Sbec3FPxhKbbNQZdBFapeuOaSu0E4oMQ==
X-Received: by 2002:a4a:bd99:0:b0:581:ed38:5506 with SMTP id k25-20020a4abd99000000b00581ed385506mr5538656oop.4.1698498808216;
        Sat, 28 Oct 2023 06:13:28 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z10-20020a4a984a000000b00581fedcb06csm855311ooi.19.2023.10.28.06.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 06:13:27 -0700 (PDT)
Date:   Sat, 28 Oct 2023 08:13:25 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>
Subject: groff 1.23.0 stability (was: using the TQ macro)
Message-ID: <20231028131325.vloorrwewruhy4lq@illithid>
References: <20231025141103.savwphtepufpget4@illithid>
 <ZTkvY8egIrf9pcxF@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ccllujkp6mnzsapi"
Content-Disposition: inline
In-Reply-To: <ZTkvY8egIrf9pcxF@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ccllujkp6mnzsapi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-10-25T17:08:19+0200, Alejandro Colomar wrote:
> BTW, I just checked and Gentoo still doesn't consider 1.23.0 stable
> enough <https://packages.gentoo.org/packages/sys-apps/groff>.  :|

I don't understand that claim.  1.23.x is as stable as it can be; there
have been no point releases.  Its behavior is not changing based on the
calendar.  I have to assume that there are either changes since 1.22.4
documented in NEWS (and if not, that's probably a bug) that they're
concerned about, or they're worried the broader community hasn't gotten
enough exposure to it yet.  repology.org has been sitting at 64
instances of groff 1.23.0 for weeks now; I think pretty much everyone
who's going to adopt it has done so by now.

CCing Sam James (the only Gentoo developer I know by name, because he's
been active some of the same places I have been) in case he can throw
some light on this.

Regards,
Branden

--ccllujkp6mnzsapi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU9CPUACgkQ0Z6cfXEm
bc7A0xAAgTmkKioMN82q60jf4gSISAGG1pldHi6dGHldsDtze1Q+JMGF38UUWB1Y
QFH3sohQaSY9p7/n5rrIMB/13Ozk9x7hL4Bcze67AFIqwuozLtj7iAU9tg2IIwhi
SAuG7q4QM/QtwflBQFRhhGUGW+bKyT2R8GqmzUsJbo7v4PAvXkWf3nVR3+81sPWM
xrXPhhyhN+jV1VzXdidIRp10Fgk8v1rWt1HuH/ebme/TIBnmyrfoekcrNkJNFd6L
4X8zS6bxp1Ilz9IHxwtQKSlE3mgsoEKuS5LSeOT5wxiLYO6b1abHooU15so7xwpd
YiAXidZJV6WFlqO+rzKBvFuwAVq/EEtHbCMR3G+AYqTXJkNCpVZg2hJzqO1wRubw
a8BfN+CHD54Fr96rZBgRRSqkZQDrE2YQ3zxODpwtjA0sQkriNMZ+Y01lDF6xEEUK
qYxbt+/EMOUBld/4/UxoYQwRLyr5+fyjvH65jgw6m2JG6V+m7k+UBWAvrmVXqy0A
nSR3iqo+Ho8tuhB5WMHLfCcqRhj8PNaOmOfJP9okE4UkZIxmqAGI2J6WuCWDRkB6
OVh2ngjLVldmlz4U57/wr1v3mL6wkxNPyf00WvtbNVePFgMyoD0n1SnvxZJl8yc5
r4TLvOsiAmIc7vyu4gNRI6uoe7gmwS1cMotU4KDLse/2sCO2YpQ=
=XBJD
-----END PGP SIGNATURE-----

--ccllujkp6mnzsapi--
