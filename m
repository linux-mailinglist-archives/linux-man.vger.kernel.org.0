Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3B377AB0A
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 22:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbjHMUGv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 16:06:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbjHMUGv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 16:06:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A57E10F6
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 13:06:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A333960C91
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 20:06:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6A58C433C7;
        Sun, 13 Aug 2023 20:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691957212;
        bh=xWpIOpKC4F1I6CbSvBERWWP6LEDoyYafqaKh5J4mAVk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=T3axwXBNY3hw0+Oxue+VwcLQYR5AcFCKCYPxZTT/PujaLeEw9SOwDaQHZn5xE3xOY
         g2CpMPVUEFvKlfM6eGofaNY7hAePe3E6+Tkm7rc2i+TfLWOr6ruy4ur0v7B6N7R7F8
         lGXBpWogPaD7fjXUch8PehidLoChEHj4v2XQcN4zhK/Mh8NuUBO/74386nPPJgGVGm
         SIEbLJ12ymuo16gCfrdQIg3t5pEGL8M140nHOVUz2xGV93ZOHhD6wv90IXSyqLEL/U
         X29zuDSuUV3QhVAJ8Dt/MRQPRbQ2AVhU0ltat0++P3AfvF/wjJhzuV7BdxJdzOfdv5
         q5PXQR3sIIsjw==
Message-ID: <ceaaa68f-99fd-f592-29a8-ec931d73c255@kernel.org>
Date:   Sun, 13 Aug 2023 22:06:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
Content-Language: en-US
To:     Shani Leviim <sleviim@redhat.com>
Cc:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, Carlos O'Donell <carlos@redhat.com>,
        Gobinda Das <godas@redhat.com>
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
 <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
 <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
 <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>
 <8068e7b6-5cdf-4f0e-6344-0dd6263625f4@kernel.org>
 <CAMO6KYpYO2-jwoiCCJO7we52eDFXMh8OTGn_jf4x1hjCxkjokA@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAMO6KYpYO2-jwoiCCJO7we52eDFXMh8OTGn_jf4x1hjCxkjokA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tjyvOUH55VJfP49btqckgfw9"
X-Spam-Status: No, score=-6.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tjyvOUH55VJfP49btqckgfw9
Content-Type: multipart/mixed; boundary="------------JaEemFSq90lKGCZX2rNCJLKC";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Shani Leviim <sleviim@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
 automotive-devel@redhat.com, Carlos O'Donell <carlos@redhat.com>,
 Gobinda Das <godas@redhat.com>
Message-ID: <ceaaa68f-99fd-f592-29a8-ec931d73c255@kernel.org>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
 <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
 <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
 <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>
 <8068e7b6-5cdf-4f0e-6344-0dd6263625f4@kernel.org>
 <CAMO6KYpYO2-jwoiCCJO7we52eDFXMh8OTGn_jf4x1hjCxkjokA@mail.gmail.com>
In-Reply-To: <CAMO6KYpYO2-jwoiCCJO7we52eDFXMh8OTGn_jf4x1hjCxkjokA@mail.gmail.com>

--------------JaEemFSq90lKGCZX2rNCJLKC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-13 18:58, Shani Leviim wrote:
> That's very strange
> Working on master, my HEAD commit is commit
> 60eb580d1e836977d57355b6519f32e37bdc3392.
> I might be missing something.

Indeed.  That commit is somewhere between man-pages-6.02 and man-pages-6.=
03,
around 600 commits and 8 months ago.  A lot of things have changed since
then.  I released a few days ago man-pages-6.05.01.  :)

Don't worry, I'll apply the patch there and rebase it to git HEAD.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------JaEemFSq90lKGCZX2rNCJLKC--

--------------tjyvOUH55VJfP49btqckgfw9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZN9gACgkQnowa+77/
2zL7IBAApBE7WSYEy0NPXtVDAoKlk4PugFU5+1wadk0YfpQDrMXpMR702JOIR8NS
Mob+bqkwGuiBFIn7dMgsewNx32bWLnOU8DFIMHHjg+GPuN4583RQOHeTGvBRPXRk
kR3f1dzWwMr7Boye7Qe17df88ies9csBvMwOGDdlrxa+ZYphk+nr2FFt2Bg+r9vi
hqoB+iLogrSAtjnoNvdreaRMssLrlDk5YSCa5EOqxvbbpgjXlwC7Xut3ZDxHSvPu
YR6CfQszJQAcnFkEufaeL38CYUpJM72DtoRB0FK9+ElEf2vTOqib1qA7UXe58ORP
uS50zRVoVjDyyT7l32X74bYHM7gmSIwV3Gl7LN0VegM117scEs4raLf14TsOXYDj
178rym3TC5k9TPeNFQjXpZszp0JDyWVCKtWHDqt7r/Nr5jC9KueVT3WLTXgh7Vnv
1CFbZt1+fPcaF58UCu4/DWy7446GWwrj9Hj+idg9rEXQUnGlrxh1IJQUYoCROafB
DDIFk8ssyP/yByQVwchfOXbNFU9iK8avdEMpyNWhZCLPhDiojwq7id5rFPgFjjdp
PMvRLTcdazOy86jj2/a+9BTu7JOwIM8PvJ+yaMh8sxFdiXDya8HrrS7rLcpT6Mhn
p4u0fOEAIFClbfiDkpCuITRgx5nLbYf64UPTv0tRWNBYCNkBggU=
=Zsfs
-----END PGP SIGNATURE-----

--------------tjyvOUH55VJfP49btqckgfw9--
