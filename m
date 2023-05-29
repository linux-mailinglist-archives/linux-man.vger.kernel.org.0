Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD4AE714234
	for <lists+linux-man@lfdr.de>; Mon, 29 May 2023 05:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbjE2DDQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 May 2023 23:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbjE2DDP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 May 2023 23:03:15 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5339B1
        for <linux-man@vger.kernel.org>; Sun, 28 May 2023 20:03:11 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-97392066d04so418815966b.3
        for <linux-man@vger.kernel.org>; Sun, 28 May 2023 20:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685329390; x=1687921390;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nbuk6/vbHp4fnSW65VEMji0M8ONUFkXwKItAdJxWGpc=;
        b=bScL5289HM/CSHc9OCQcaGF8EHnw07lCvYb3aGAclNsB9HlWDdZkboaPGsbiFEaQ5I
         ceQfoSnoCm0bEOA5GCQhMzK0fT1nWevQDZqQHrMbBCXJkaZkm43U5dLMif9ds89uLgH9
         XLCJ2f4ivvIO13dOrDJxEKx8z3MLdolt/dpHaWxsu2efoMHSOyeC1LlqcIX/Ue4m+bbI
         Yy1BC19YYFquCfNGr32Q6PqUwilbeXD5biKrQqIWT1dy9VRlabh9Qrhu1ZOSrg+SlkVh
         yZkxhGXD2jbTqudg8FXiBhtnUtrpLK91otv8W7eQobNP1o2cJG9mCwrH9kd0xfHAMWxj
         2WWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685329390; x=1687921390;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nbuk6/vbHp4fnSW65VEMji0M8ONUFkXwKItAdJxWGpc=;
        b=X27xIJJWhJ/VnxUoPXKMeAnXV56fADYPt3+iYpvnOTHIRg1BUM5F3PBzAXOPsqRtGg
         i7IW1Ulyrb8gNEDeAYrD4u0x3BH8EF2jsC6WJKHDx13+3SDgRPuFK3yTGjNRWjWnvax+
         IZRRt8BqRDXSu94PIhSCpGK/Wd25kn3JPVx8gzAbwL3Wi+k+VRbeS5QhA1/4SaNTotNI
         bO38/hKkKjV+eoxhQoClmBmiGVkNtOwXQ6W0PM4uCh7TjsEjksoaY7/Hvr7h2pOHcZcf
         Cg9w2qDPsLnieuwk4n8dw2MGeXOL1zULPjY6qTcqLFKWScHnVTzGzcTvzlO40gf7hj7k
         7KSw==
X-Gm-Message-State: AC+VfDxBCFf6pdp8nzSfdEFrseyDjlOqwgdA3kvMknmI9SobGcqr6Lyh
        pLzepWcps0bgpQkct1TRiHbIbmMkjmY=
X-Google-Smtp-Source: ACHHUZ4hp9QvqJ6myUMlpGf1TQb0NEavqkMZr2HomcKCxTyEW9wAeU1mBQFOZUL7cAit3KJ7TYC/xw==
X-Received: by 2002:a17:907:3f14:b0:94e:cf72:8147 with SMTP id hq20-20020a1709073f1400b0094ecf728147mr9462640ejc.48.1685329390114;
        Sun, 28 May 2023 20:03:10 -0700 (PDT)
Received: from dj3ntoo (57.sub-72-109-255.myvzw.com. [72.109.255.57])
        by smtp.gmail.com with ESMTPSA id jw5-20020a170906e94500b009707fa1c316sm5340883ejb.213.2023.05.28.20.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 May 2023 20:03:09 -0700 (PDT)
Date:   Sun, 28 May 2023 22:03:03 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Ian Abbott <abbotti@mev.co.uk>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3] fgetc.3: Describe handling of ungetc(EOF, stream)
Message-ID: <ZHQV54OsIjRZalxY@dj3ntoo>
Mail-Followup-To: Ian Abbott <abbotti@mev.co.uk>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20230526154132.26865-1-abbotti@mev.co.uk>
 <20230526160944.27743-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d6GPdBxfKW579n19"
Content-Disposition: inline
In-Reply-To: <20230526160944.27743-1-abbotti@mev.co.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--d6GPdBxfKW579n19
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 26, 2023 at 17:09:44 +0100, Ian Abbott wrote:
> As per the C standard, calling ungetc() with the character parameter
> equal to EOF causes it to fail, returning EOF.
>=20
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
> v2: Correct English grammar usage for "otherwise".
> v3: Move detail of EOF special case to the end of the paragraph to give
>     it less prominence, as suggested by Alex.
> ---
>  man3/fgetc.3 | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/man3/fgetc.3 b/man3/fgetc.3
> index 75dcaeaf6..a15d73b15 100644
> --- a/man3/fgetc.3
> +++ b/man3/fgetc.3
> @@ -62,7 +62,7 @@ A terminating null byte (\[aq]\e0\[aq])
>  is stored after the last character in the buffer.
>  .PP
>  .BR ungetc ()
> -pushes
> +normally pushes
>  .I c
>  back to
>  .IR stream ,

IMO, saying "ungetc() normally pushes c back to stream" is a bit
redundant. After all, pretty much every function "normally does [thing]"
unless an error/exception case is hit.

It also breaks the flow of the previous text where you have, for
example:

    fgetc() reads the next character from stream and returns it as an
    unsigned char cast to an int, or EOF on end of file or error.

> @@ -71,6 +71,13 @@ cast to
>  where it is available for subsequent read operations.
>  Pushed-back characters
>  will be returned in reverse order; only one pushback is guaranteed.
> +If the value of
> +.I c
> +equals that of the macro
> +.BR EOF ,
> +nothing is pushed back to
> +.I stream
> +and an error is returned.

Similarly, I think you can drop the "that of the macro EOF" and just say
"equals EOF".

- Oskari

>  .PP
>  Calls to the functions described here can be mixed with each other and w=
ith
>  calls to other input functions from the
> --=20
> 2.39.2
>=20

--d6GPdBxfKW579n19
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZHQV4QAKCRCp8he9GGIf
EbvOAQCBHbfTi+XgmT28J9EWe2+lbPUm6/j149v8BNQmQXWC+wD/Qve0tpx/rrmi
YpoaHHopGz7q6tXvcw38gAObjtFElwM=
=dsp1
-----END PGP SIGNATURE-----

--d6GPdBxfKW579n19--
