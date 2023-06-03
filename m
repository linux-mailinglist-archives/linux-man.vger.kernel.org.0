Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03FE472115E
	for <lists+linux-man@lfdr.de>; Sat,  3 Jun 2023 19:30:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjFCRaz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jun 2023 13:30:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbjFCRay (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jun 2023 13:30:54 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E08DC135
        for <linux-man@vger.kernel.org>; Sat,  3 Jun 2023 10:30:52 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-30d5931d17aso751165f8f.3
        for <linux-man@vger.kernel.org>; Sat, 03 Jun 2023 10:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685813451; x=1688405451;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wuXdWlkgqwWw9BNr531AnDIngvlCdfGL7jtMkkC8E5k=;
        b=KaafylHZHsy1SqeWI8IKoJhi4dv/o6fQGtfuChJ3EEvgDyZIA+tJiGGPYDD/jw8+xz
         HfsU75iV92ykv7MB4mnpQsnb9vfyaoC8sW8MEuITwhkdo2y2gUoivOhfhEceYO/Mes6K
         hoTmcFLr3oGdj9fVwsMf5Bx87ZLLMow+EiRhR/4CagLQ3iDxTQThE4iq4uF6vf3qXONr
         96euotu028GfUPGU7QTMDxRDm1kALywVY3Puwsj0OqsExdLIyomhdfXqArChkaTGqPPx
         elRATM7h5IDgseGgS69Ibv1IQmEk8QtV0G82xJ1Tw/Vr6Z3JGLuo30fMJIa3PM1I0Ie4
         66Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685813451; x=1688405451;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wuXdWlkgqwWw9BNr531AnDIngvlCdfGL7jtMkkC8E5k=;
        b=RwXXUlr16J7oix45ijj3y1sa5N1Bc4IsN9GE4l6v97BssSinUSiFdY1vdnKw4FJU4s
         j+qFhpd3GsnS+HQBEPR+9IN/4s/I0nvDlXW6mIfpSk2SP8/MXmwqUASFE4BdxTQriqr2
         sjHS50fTes17see18NuypqrpOm7jMTuQlANYeHgu22bft+Hz94SA3GZlNrnjZDZRYjn5
         +IUTr1Dx8lIGT+1q5Haymk6Qw3G/XKyptUD9VxgIewtJ6v+T1xO4DPfRoodiotSYb8sc
         k9wTVxMAvdsnxod0NGxzy8FEH4VgIANZdCjHfTMjpieZk3BYzOOSyPYORNLCDBzY4j81
         ApjQ==
X-Gm-Message-State: AC+VfDwPQAcfPpvHJKb7gdLiov1aqJKIWHsoVDZCK+xC1AvGNRhunN++
        iFpbOOnIqtpMjQBzsckQopc=
X-Google-Smtp-Source: ACHHUZ4/V45BkYcdTBnBUfKvU4x+8LkrFErYm+g01bd6GNBOAiBltmOStbJPs4CV7+lFDGctAoNbMQ==
X-Received: by 2002:a5d:4c51:0:b0:30a:8fcb:ec24 with SMTP id n17-20020a5d4c51000000b0030a8fcbec24mr2482241wrt.1.1685813450837;
        Sat, 03 Jun 2023 10:30:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t3-20020adfe103000000b0030ae6432504sm5014304wrz.38.2023.06.03.10.30.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jun 2023 10:30:50 -0700 (PDT)
Message-ID: <8f696f03-5925-1773-073b-4d058b36e57e@gmail.com>
Date:   Sat, 3 Jun 2023 19:30:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <c555035c-1d55-1de6-64e6-2911e3e49eb2@gmail.com>
 <y4qprm4soq7x5hzmraasl4mtzlgwfbeywexmepyicyz24cgurd@tisp6gxnrdtf>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <y4qprm4soq7x5hzmraasl4mtzlgwfbeywexmepyicyz24cgurd@tisp6gxnrdtf>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Izo0un4ArYmVmzabtPjAVtoQ"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Izo0un4ArYmVmzabtPjAVtoQ
Content-Type: multipart/mixed; boundary="------------nPew60gPh1Utw0lFaPoSix6R";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <8f696f03-5925-1773-073b-4d058b36e57e@gmail.com>
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <c555035c-1d55-1de6-64e6-2911e3e49eb2@gmail.com>
 <y4qprm4soq7x5hzmraasl4mtzlgwfbeywexmepyicyz24cgurd@tisp6gxnrdtf>
In-Reply-To: <y4qprm4soq7x5hzmraasl4mtzlgwfbeywexmepyicyz24cgurd@tisp6gxnrdtf>

--------------nPew60gPh1Utw0lFaPoSix6R
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 6/2/23 02:49, =D0=BD=D0=B0=D0=B1 wrote:
> On Fri, Jun 02, 2023 at 02:12:27AM +0200, Alejandro Colomar wrote:
>> I forgot about this patch set.  Could you please resend anything that
>> is still pending?  Thanks!
> I did too, but that's because you applied it. This particular patch is
> 164297a322b5dee6addff9ad4acb224302ab6e7d and the whole set is
> 0d120a3c76b4446b194a54387ce0e7a84b208bfd^..e894e84af353727082420c48b3cb=
ea566a0f7692
> from the looks of it?

Yep.  For some reason I had marked it as unread to check it later; probab=
ly
I just forgot to change that after receiving the revision of the patch.

Thanks!
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------nPew60gPh1Utw0lFaPoSix6R--

--------------Izo0un4ArYmVmzabtPjAVtoQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR7eMkACgkQnowa+77/
2zLkvQ/+LD2Onc2x34IF1f/I8dvIe0ckETyDCLiLtrcqacQeSvUVSFznjZI/cxg1
i97PEEsbTzaAV6rByzBcYWCvthRVjfpu4wHPpbf9TIvm/ERQcYTqchEI0f69X4jd
F1KGYPmEVixhpSXLhMXgisyCDKprCgSS1A60WbVLvLpa84nwbNqvDc9z9FSk4ts9
QhJhohavQJxTaq7RE8wgvfEOg/VwGpLadM3hlaBvKYDGonbV0JVg9CX7CdA4oGMR
UtcmRHmQrwqFGMIfxklxPoR5HsEPWD2fJSmEjJ1J9G5hhfeNV13iHaZZv3SEGcUT
272TEt4PjpGEVKSKNSZyjQ4G3F360acohNWhuyqCy9u8E/QksDIM3n7rzJVtV6q/
UgDWbpNKG1x7+swYtCfTUpAV7QEhbE1EcjaUCFV6R8++3sR1GOzToVsY1Q+kX6v2
DIRhEvUgJSf/YYPV4oXtOfk9E7I5Rcj7dM3l+AlvCGMgW+1vfccZDFXfvgZMsfGg
8SrY+X5WvkvPbDRZ2L961kdmv35HTGNzjLu0fwJegGC9J0ldQiMqMr01xabzhaKC
OMx0m1w6EYFTy91iEC7Q+cP7+u+ESCziQ6CEI5vNb12WBJFZCpHZFmpRVST8ytnj
jdIl+qiceVVHOJ8BSUmbVgx05/R1bTsQkCh8IjZtgMLhE+ecqkY=
=7wfH
-----END PGP SIGNATURE-----

--------------Izo0un4ArYmVmzabtPjAVtoQ--
