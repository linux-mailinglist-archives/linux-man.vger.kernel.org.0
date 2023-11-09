Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 931467E6441
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 08:23:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232603AbjKIHXT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 02:23:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232521AbjKIHXS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 02:23:18 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBBAE2126
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 23:23:15 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c6ed1b9a1cso6430611fa.3
        for <linux-man@vger.kernel.org>; Wed, 08 Nov 2023 23:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699514594; x=1700119394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MOGVfgFlEptvMddcO5ZQajePzVcMhzs2zKF/xM64iCo=;
        b=CHE4c2Ut852RbtKnyP9PUTsuAkJIPXfekNb803AWUR6/6Xs9yyP5UMOir8+Qbcg3kp
         +6OJ+5+EPysvri2u7oPcVCvQb50jKJNFgxPN5J2ptW436Xt+/p9BptXvTZl9Qs0oLICE
         2Pg8czaQ7l7qClJDGj87D5kxN9VEFXc0tpdNtz2eROheqDtrdP9ual/gTKw7XM6i9LRy
         zkY00dGIcgVdh9FvD1eRdoxmNupkiuxC5SYMo7iMU+mlP7CpAQg21iI3NKC0reklyeDu
         OS8DGd0L49DVL0GZhvua8nU0sTUWYY2vFrraeevVbdYFQ4Lpn7sYYP2p13DMCeH1D7wJ
         sOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699514594; x=1700119394;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MOGVfgFlEptvMddcO5ZQajePzVcMhzs2zKF/xM64iCo=;
        b=sz6hqZhTAt+eAVKAoJkIlJzBO7W06nXaNACxeNPMCkeQeXp9T9S3s5sIKZSgcusM7y
         wmAqkuzwtguNGdUIypMGkn1GR88cC3OZZVXpawllnZP8OLpZ1MY2B+6HvjejB5OS4nwW
         8GhpxLVQbYOmq/MkS4+Gb3DPfQc69x7AdlKiYPnqdJQ8668fQXrT7WyMCILYW0DMw1oX
         PGRExNy4rq259WRM/zwjaJbTOT4w1bnxetPtskep0p6C7D6irZtMKSMedvZRUK6PA3l/
         y4u2iz8gpRh4AzI+oRBclBCYWseiyeVUYmAMQSHSqe1+g6F4Lakdzt8IeGfXehF96R0S
         KzIg==
X-Gm-Message-State: AOJu0Yxl6ofN1TxqF0zKvN48G3VrjEVct9f4jWx69KjksuS+5WHOMZo1
        ZtDH0QiE22Nruq7/xGsyVvU=
X-Google-Smtp-Source: AGHT+IEHUQ2+qvCHqxJi0L6nr5csEkbB+6LPEy7pmAEsGOtnehTcNFMf0l8eq9kg/MKgugrskZrKtg==
X-Received: by 2002:a2e:8e62:0:b0:2c5:12c4:5ff with SMTP id t2-20020a2e8e62000000b002c512c405ffmr3479979ljk.17.1699514593790;
        Wed, 08 Nov 2023 23:23:13 -0800 (PST)
Received: from dj3ntoo (223.sub-72-107-196.myvzw.com. [72.107.196.223])
        by smtp.gmail.com with ESMTPSA id y33-20020a05651c222100b002bce8404157sm2136629ljq.12.2023.11.08.23.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 23:23:13 -0800 (PST)
Date:   Thu, 9 Nov 2023 01:23:04 -0600
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        DJ Delorie <dj@redhat.com>, Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string
Message-ID: <ZUyI2OfLUfC1Ea9c@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        DJ Delorie <dj@redhat.com>, Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
References: <ZUwCwxyPfur-hfea@debian>
 <20231108221638.37101-2-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="0Db+ECVNXDHOq9vb"
Content-Disposition: inline
In-Reply-To: <20231108221638.37101-2-alx@kernel.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--0Db+ECVNXDHOq9vb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 08, 2023 at 23:17:07 +0100, Alejandro Colomar wrote:
> These copy *from* a string.  But the destination is a simple character
> sequence within an array; not a string.
>=20
> Suggested-by: DJ Delorie <dj@redhat.com>
> Cc: Jonny Grant <jg@jguk.org>
> Cc: Matthew House <mattlloydhouse@gmail.com>
> Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
> Cc: Thorsten Kukuk <kukuk@suse.com>
> Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
> Cc: Zack Weinberg <zack@owlfolio.org>
> Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: Carlos O'Donell <carlos@redhat.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---

I like the "with bytes from a string" wording. Good call.

- Oskari

>=20
> Resending, including the mailing lists, which I forgot.
>=20
>  man3/stpncpy.3        | 17 +++++++++++++----
>  man7/string_copying.7 | 20 ++++++++++----------
>  2 files changed, 23 insertions(+), 14 deletions(-)
>=20
> diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> index b6bbfd0a3..f86ff8c29 100644
> --- a/man3/stpncpy.3
> +++ b/man3/stpncpy.3
> @@ -6,9 +6,8 @@
>  .TH stpncpy 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
>  stpncpy, strncpy
> -\- zero a fixed-width buffer and
> -copy a string into a character sequence with truncation
> -and zero the rest of it
> +\-
> +fill a fixed-width null-padded buffer with bytes from a string
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ", " \-lc )
> @@ -37,7 +36,7 @@ .SH SYNOPSIS
>          _GNU_SOURCE
>  .fi
>  .SH DESCRIPTION
> -These functions copy the string pointed to by
> +These functions copy bytes from the string pointed to by
>  .I src
>  into a null-padded character sequence at the fixed-width buffer pointed =
to by
>  .IR dst .
> @@ -110,6 +109,16 @@ .SH CAVEATS
>  These functions produce a null-padded character sequence,
>  not a string (see
>  .BR string_copying (7)).
> +For example:
> +.P
> +.in +4n
> +.EX
> +strncpy(buf, "1", 5);       // { \[aq]1\[aq],   0,   0,   0,   0 }
> +strncpy(buf, "1234", 5);    // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], =
\[aq]4\[aq],   0 }
> +strncpy(buf, "12345", 5);   // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], =
\[aq]4\[aq], \[aq]5\[aq] }
> +strncpy(buf, "123456", 5);  // { \[aq]1\[aq], \[aq]2\[aq], \[aq]3\[aq], =
\[aq]4\[aq], \[aq]5\[aq] }
> +.EE
> +.in
>  .P
>  It's impossible to distinguish truncation by the result of the call,
>  from a character sequence that just fits the destination buffer;
> diff --git a/man7/string_copying.7 b/man7/string_copying.7
> index cadf1c539..0e179ba34 100644
> --- a/man7/string_copying.7
> +++ b/man7/string_copying.7
> @@ -41,15 +41,11 @@ .SS Strings
>  .\" ----- SYNOPSIS :: Null-padded character sequences --------/
>  .SS Null-padded character sequences
>  .nf
> -// Zero a fixed-width buffer, and
> -// copy a string into a character sequence with truncation.
> -.BI "char *stpncpy(char " dst "[restrict ." sz "], \
> +// Fill a fixed-width null-padded buffer with bytes from a string.
> +.BI "char *strncpy(char " dst "[restrict ." sz "], \
>  const char *restrict " src ,
>  .BI "               size_t " sz );
> -.P
> -// Zero a fixed-width buffer, and
> -// copy a string into a character sequence with truncation.
> -.BI "char *strncpy(char " dst "[restrict ." sz "], \
> +.BI "char *stpncpy(char " dst "[restrict ." sz "], \
>  const char *restrict " src ,
>  .BI "               size_t " sz );
>  .P
> @@ -240,14 +236,18 @@ .SS Truncate or not?
>  .\" ----- DESCRIPTION :: Null-padded character sequences --------------/
>  .SS Null-padded character sequences
>  For historic reasons,
> -some standard APIs,
> +some standard APIs and file formats,
>  such as
> -.BR utmpx (5),
> +.BR utmpx (5)
> +and
> +.BR tar (1),
>  use null-padded character sequences in fixed-width buffers.
>  To interface with them,
>  specialized functions need to be used.
>  .P
> -To copy strings into them, use
> +To copy bytes from strings into these buffers, use
> +.BR strncpy (3)
> +or
>  .BR stpncpy (3).
>  .P
>  To copy from an unterminated string within a fixed-width buffer into a s=
tring,
> --=20
> 2.42.0

--0Db+ECVNXDHOq9vb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZUyI0wAKCRCp8he9GGIf
EcQ/AQCPq1CJdwgQAG6cSf4XHICCXz9tBvrTuFcCRbNY+HeHnAEAi50cjTMDX33I
FcgDNeGPchW42l31Dj8MIXaKEs35UgI=
=m0VB
-----END PGP SIGNATURE-----

--0Db+ECVNXDHOq9vb--
