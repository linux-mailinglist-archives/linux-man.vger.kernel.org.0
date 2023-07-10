Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0139374D9B8
	for <lists+linux-man@lfdr.de>; Mon, 10 Jul 2023 17:21:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbjGJPVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Jul 2023 11:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbjGJPVy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Jul 2023 11:21:54 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5190A0
        for <linux-man@vger.kernel.org>; Mon, 10 Jul 2023 08:21:52 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3a37909a64eso3233451b6e.1
        for <linux-man@vger.kernel.org>; Mon, 10 Jul 2023 08:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689002512; x=1691594512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UTdVEfGL6d2UtIt042baQex6in0rKorSrEDyJNIGGtY=;
        b=niNOLs6ZLyKZlxLnGXSXdiZ/V3ZwrqKcEvzO7EFl438NYoXzKyNV971VWUcaOk26Bs
         AuMwsKIx2FzYo5DtXKvFvP9z2hHhMwkNrKHeK/r9T3/ArW2hA/5zNlv4znZj3IV/qiSe
         tQNYRZQc239T26Oc6p9N+r4VGxq2LxJaMgM83N0IgmAFj3ARVjD0Nbc8JWqGmH0DfVi7
         /At8RmP3PxaQG+zKZ8hJoX2UE6dju8W3MZJ9v6LzezpiF95cCjV2zIMf5yk99+JsCp6m
         t47eU9Yyc5iTJzCgGLVIr0sP2au/mRFBceBZ5rPG8R+e/OIPm5cg2DreRnHq/UjVJyiP
         02Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689002512; x=1691594512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTdVEfGL6d2UtIt042baQex6in0rKorSrEDyJNIGGtY=;
        b=AScX0oWgcxM3qbLEr0DtCp0p1FN9C22gKWM33iriivdkz4f3ak60B9VEpb6247NIWO
         2sPVrunuNKUK1sEsL0gTWjdaTo0XXxipcXI7qve0O/j6zYSjXKhjXGPys1Z746F0FR5q
         4MMf02SK61U+N/XGRScO9Ct4yt5hPDTkEJuOJi864TqrbkOJG8/hIxYwz0oXTSnUb6nY
         sRfHA/taBB7Y0XGhAoWDl3sVTPufE8oROrbYeTl5xkh/LbKTq8WiEBWLnwTkZB0M3WBg
         0hY1b7P2hyOJ+4yUNWpfvNc4CMR6/9Q7sFrEJr3iYs6TlX203JtpjPj5/aMAz4vchOA8
         taFQ==
X-Gm-Message-State: ABy/qLazgHPC4fEQ9195TAHPKO5xw3scsupmPGqqyHU42C/3v5tXiAvF
        7BzvFPemnF0typbk7OqTh3s=
X-Google-Smtp-Source: APBJJlE5CBt6Ja9E2Dy2zRTAD+qEb6SJlmn4JIcHvCK7UzkQcJPY9kZrZir2r+RMyFCR3cKNPyO6rA==
X-Received: by 2002:a05:6808:178b:b0:39e:ffc5:c450 with SMTP id bg11-20020a056808178b00b0039effc5c450mr14487911oib.47.1689002511976;
        Mon, 10 Jul 2023 08:21:51 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v6-20020a544486000000b003a1ae2d2638sm13347oiv.7.2023.07.10.08.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jul 2023 08:21:51 -0700 (PDT)
Date:   Mon, 10 Jul 2023 10:21:50 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] abort: clarify consequences of calling abort
Message-ID: <20230710152150.b7lwmzwmuqjxxsiv@illithid>
References: <6aa0c5c1dd37704e283794ed828461d1e0831780.1688997554.git.tgolembi@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="du3yuda7j6gjgjti"
Content-Disposition: inline
In-Reply-To: <6aa0c5c1dd37704e283794ed828461d1e0831780.1688997554.git.tgolembi@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--du3yuda7j6gjgjti
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tom=C3=A1=C5=A1,

At 2023-07-10T15:59:28+0200, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
[...]
> Clarify the status reported by wait*() functions. The requirement
> comes from POSIX specification.
[...]
> +The status made available to
> +.BR wait "(2), " waitid "(2), or " waitpid (2)
> +by
> +.BR abort ()
> +shall be that of a process terminated by the
> +.BR SIGABRT
> +signal.
[...]

I believe Alex's preference in the Linux man-pages project is to
document what is actually implemented, not to repeat normative language
(paraphrased or not) from the POSIX standard.

So glibc should be tested to verify the behavior it actually exhibits,
and the language above then updated to describe that, noting any
deviation from POSIX's prescription.

The same can, optionally, be done for other libcs like musl.

Alex, please correct me if I'm mistaken.

Regards,
Branden

--du3yuda7j6gjgjti
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmSsIgYACgkQ0Z6cfXEm
bc6Oyw/8CY795OqjsA8kmC2WOHFEr7cEHYzJPoUJ3qzGmT0zNDgwcqQRn/BcGjx+
ZZJTVX2rw+e8zTZMACEMVMP1xpsusBLSzsrHmhH0auTM6JGmTazW26RYoc7RgisK
T1ALeKhmHTf7lH/eFYqyNMePUc1NSZU77EmQVbvXbA2aZRBuDfyzpww3aqTFO87I
mVHJc+F85SavblgvWQoFHLugbiHrFW5iubqX51mZcLm2a00MBNJbzUqcZerHvlJX
BMKQynkNviFL42vGWSwQKWUNtpNM7gNr8chRTeowTdsywxf4F5BUvwiovlw8QuwI
dvTnxgykw7icOkGq7nnQZZrRHtjmKcoXdRp8UVjK+2NG2I3sOW+7ekgTc9cUR67Z
Qu0eeViHfa1O0GQZVZbX5HoXxB6fI0qRUGerQJkTPcuLid1R9xCffo1bZENew1iN
oHlH1R6rvtoYI/l/eBb7fOSY0WgeFHgmv4cHnp3S311WjgVcyxYskLCRBq1teJUq
VfmhIDXcf41VG4VYGMYLI7CpJPLBiihKoAwl15DRlwtJTTsjGoUEmS/FtQoqyIpa
2Tr4lH+ZgdMmdgZyW8ba+LSLeC4D1qIpKJiAjwrcotV79x0MSjMohQ9R9Iit1QQp
ICD1BmcYWbrf42olp+o9SglqXEA4yv0/4b6G4xPsuk1e/gUpWiM=
=t1jA
-----END PGP SIGNATURE-----

--du3yuda7j6gjgjti--
