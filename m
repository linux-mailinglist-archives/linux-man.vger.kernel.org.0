Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91EA16B68AE
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 18:11:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230287AbjCLRLU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 13:11:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbjCLRLS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 13:11:18 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E42E14345C
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 10:11:17 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id r23-20020a05683001d700b00690eb18529fso5593981ota.1
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 10:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678641077;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8sqTEzGlp9LdvA7w3fUuDgywD/Z7MJrMmSX/XymZkuI=;
        b=Mye52lWrSgd7XBPpfR3kCVXD9YuO6q5rwBkwnzRTHthWyY01Ebtbtr/CoNQq8w3hbU
         +icOVHpMnRZgBZhfs2NNnRj108vsGaJT+F4nwtCMjchCluU1LNZD9aWOegsIDh4oaZQv
         O3TrjBOcWFDkMxh2Iur3K1fVg/WOSIVr6KwnLbAR9om6mP01+tZXykeZikZq26/B7x1D
         z32qHPrGtz0Weo5oaQDoa6c+MhhAY/b9I1VRmO8QHApzp54zIsWCYQp1ZeAoa8pr/5QF
         PvUL25ZJsPtbN1wGQ8O7nMNie0r0ABL4hi5d9Jj6+21qkBagMAxfPetb0Rlu6XF0riL4
         SX/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678641077;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8sqTEzGlp9LdvA7w3fUuDgywD/Z7MJrMmSX/XymZkuI=;
        b=qQQnXMEBSc8rTdEpKva5x6TUjh6RBJVlgVyS7XY6W6OkWbSLPP5s5rcK8KK8FCLkOr
         K0U818FMgdymU+IUTVA19YyU7xJYh7w6Cahdk7krFDB1hHfnctuMqhjFclUtETWfvVJh
         wMu5EVRMAKJK6/h2UBjuWxpdwV2332vWz7gH7eaRTzoBMIsxqkahNyhDvxmn1INQ9UJl
         Pe9o3dBr5IpODM/we2hxQLn4Cb6o5pSimUv/XsxSz+EDBa3MCOuJi3e859NOgBO6i2wz
         FV34+vdwQ/1FgWYvssjgTf53t7xcJqscJPBXMTbNLLB8PzPwad8AxMqS/TX/C2BZGuHy
         1J0g==
X-Gm-Message-State: AO0yUKX9dmD3gPErSy1huNIwWzWsa1tEeRmOHetyb1W5wcGcXcbm5rZK
        N+S+NkKMUCNU83eTakx+BeM01C9Kt8Q=
X-Google-Smtp-Source: AK7set/XcXMIrz30u5THJyJDUWxVf+jh33G8JQEr1CLbbJit8MJpBSoYipl6QCchaSIckBm6mHkrvw==
X-Received: by 2002:a05:6830:71b:b0:693:c7e4:ddb3 with SMTP id y27-20020a056830071b00b00693c7e4ddb3mr15195987ots.4.1678641077190;
        Sun, 12 Mar 2023 10:11:17 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d13-20020a4ab20d000000b004f9cd1e42d3sm2233770ooo.26.2023.03.12.10.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:11:16 -0700 (PDT)
Date:   Sun, 12 Mar 2023 12:11:15 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page nfsservctl.2
Message-ID: <20230312171115.qydvpsgivjsoyfg6@illithid>
References: <20230311171355.GA4755@Debian-50-lenny-64-minimal>
 <730751cc-f526-2378-98ba-36834f4c5d8e@gmail.com>
 <20230312052333.GG7927@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mhbll5yzubez3jdo"
Content-Disposition: inline
In-Reply-To: <20230312052333.GG7927@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--mhbll5yzubez3jdo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-03-12T06:23:33+0100, Helge Kreutzmann wrote:
> Hello Alex,
> On Sun, Mar 12, 2023 at 12:31:05AM +0100, Alejandro Colomar wrote:
> > On 3/11/23 18:13, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    mountd(8) =E2=86=92 B<mountd>(8)
> >=20
> > We don't use that formatting in example code.
>=20
> I think I saw it elsewhere, but then probably from one of our ~ 100
> other projects.
>=20
> (And again, for hyperlinking etc. I think it can be helpful; I just
> checked, even with formatting I can simply copy that code out - so
> there is not disadvantage?)

I don't have anything quantitative for you, but my impression from my
own readings in software is that generally, in typeset material, code
comments don't indulge in much style variation.  They might be set
uniformly in a slanted face, or in proportional typeface where the code
proper is monospaced, but not much beyond that.

Also, I think having URLs in code comments in documentary examples is
typographically dangerous.  In examples, filling is (usually) off, and
URLs can get long, so the risk of oversetting the output line is
greater.  You also don't know how wide the user's terminal is going to
be.  On top of that, groff man(7) permits the user to configure the
"standard indentation amount".

    -rIN=3Dstandard-indentation
        Set the amount of indentation used for ordinary paragraphs (.P
        and its synonyms) and the default indentation amount used by
        .IP, .RS, .TP, and the deprecated .HP.  See subsection
        "Horizontal and vertical spacing" above for the default.  For
        terminal devices, standard-indentation should always be an
        integer multiple of unit "n" to get consistent indentation.

These factors combine to make it hard to judge how much room you're
going to have for your code examples.

So I would avoid putting URLs in example comments.

In fact, I could counsel against any code comments in examples at all,
unless they're so short that they don't increase the total width of the
example.

Regards,
Branden

--mhbll5yzubez3jdo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQOB6sACgkQ0Z6cfXEm
bc7UxQ//S9K4BbykMSq8w7AW+ulfhNtFYv8roQ3eWBwJ+bLjSF3Jdnrg73w7HWRX
L+pzz/eKXcyewLvb+JdligHyHrWJ5jQ2OLrn+/z+dPfQkGn+A8HafJDKCwnr9ymJ
Wz8NdyGsR2ZYOp2bIFF1uiq6yJ/2s+y5IXCthoxoUh85Ia1FbFIGLTDeIaLbxN0l
JSdGPtNnI5bGXfukiL7PU2RnsxSBDyLxHhAq19ttiPLWkk8NfNnGuC1jj7GDYeDd
CFCOvqRxHM6DB/FLsYywa+H5Fx8bH/aux/qk9gwyk0aWbyrOj3WR8OAy1paCShpj
S2eJP5oaQi/P7BY9qovP+JxsEmMTZ433LSMgIncHZtSm4l98/6IIS1YY3WJDRIia
50KhHEEELZc6h0mBQGX5GTOHm0uXvPwmY42176Vn29sTfzabMcrn0Ys0lb1qaHdJ
Na2iy6YbBJf0ztesJmHrfTFaZcplvIWP7NlssmzNswd8l5ypHh6I9CttblHQ1F1v
HvyJ6j5u236s/V4oZF/xvrUz4nhkQcWzWQoqJRSUP7w+SThnNQnXfm0qXMiOYoRn
25nmFYmpGalu8SaZZ+eOBDNYAaIYLfv+ftFunBvhvIg09cywu4NM7G2Ht2Jarti/
F6ZnlSvKFrL+EBXgPCIq2YtT8hLBfY0HgS4k5qDzaXM0HSlNYVg=
=NWhS
-----END PGP SIGNATURE-----

--mhbll5yzubez3jdo--
