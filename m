Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98BB4691648
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:36:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbjBJBg2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:36:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230003AbjBJBg2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:36:28 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462BA5A9D6
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:36:20 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso2989129wms.4
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHGgkYTzi/3Tagd8mYK+hRo+676HYYnbkUVwBPLSZXM=;
        b=NfAmFcXqTZyoZ8waoW8PB+abkVgFMlYLCawv/1K1rmIpOAd65uvLaTMwvmJ/H7lFOc
         H3k10TLlsx8EJAKWri6MP7tNj/HqqHMTEoZhp3Uf1jvFdfx8pveQ+uT2OxL4lbRBXtaD
         cNOxACKBmcx0duq1/mDUiTnTk2FkiggXnPdB9MNvarjuG5wom5t1W3qk+2OOJYP+Aa4t
         n9bSwxlD12ucZEArWa4sB7sYnQ7LxReTzFJK1Fj2GpafyBJBUI3GRb0SokkPIWvjpnwI
         kYjTEt/NfmGWTKubKGF+H/Hkt27yLLMy9bwq3BLBuGTpncU6qFMxJSPdCsoFbIxRtmbY
         /T4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YHGgkYTzi/3Tagd8mYK+hRo+676HYYnbkUVwBPLSZXM=;
        b=ErIXl7Y+ciVEJztxC3Ql4u/UqbioQk5edmThYZOBFGmAorW9tLqqdQjZy+CBeJ4BaR
         eW5sFklabN3NvSBjCJI3GvX6J59GVuQYWvruOSnpmMpAUz3NYCJ3xN2uDxamD0Imhk5M
         9GbY3GHDGu/618cVfWovlfC6nQzxTBZdqX58PKSyBYKP/VPesr48VTFixJMKWYX/urSC
         XTnlOkfQjHI47x3W1q8AwiBHs1RYZsYq7L1AD5frwUon57943xYOc2MCGhuUrc+Zu3OG
         kpfjpOtBf/pkvC69YBcRVBCmubn/OEe+oE2PwRKhp/yFKfvYIKtAohvoxOJRFUmnlI34
         2dWQ==
X-Gm-Message-State: AO0yUKWJ+zqBi1XJKiMdbwZT4+/Uv7IDjZj0HMvDxhjZfMK++WGnTHE2
        9RwFb6qKDR6uhczAHDKBRAg=
X-Google-Smtp-Source: AK7set+RbINBgVZdg/yWfC4jKF8aMlmq14fM12BJ/dn+B7vWbFMIODV7q2OwxqGWiCZDiiBVhoUvsw==
X-Received: by 2002:a05:600c:990:b0:3dc:5abb:2f50 with SMTP id w16-20020a05600c099000b003dc5abb2f50mr11075906wmp.19.1675992978853;
        Thu, 09 Feb 2023 17:36:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g16-20020a05600c4ed000b003dfee43863fsm7420367wmq.26.2023.02.09.17.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:36:18 -0800 (PST)
Message-ID: <7a753a4c-ec03-063c-edee-70770ad0e77b@gmail.com>
Date:   Fri, 10 Feb 2023 02:36:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 15/20] localedef.1: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230209181112.tq2apv5ygm7atdho@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209181112.tq2apv5ygm7atdho@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5pSnzq0zl8tPHnGO5G3XB0Q9"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5pSnzq0zl8tPHnGO5G3XB0Q9
Content-Type: multipart/mixed; boundary="------------OUKTZ7HFN7V0i7KT9oiZtLFm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7a753a4c-ec03-063c-edee-70770ad0e77b@gmail.com>
Subject: Re: [PATCH 15/20] localedef.1: ffix
References: <20230209181112.tq2apv5ygm7atdho@illithid>
In-Reply-To: <20230209181112.tq2apv5ygm7atdho@illithid>

--------------OUKTZ7HFN7V0i7KT9oiZtLFm
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2/9/23 19:11, G. Branden Robinson wrote:
> Use typographer's quotation marks.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man1/localedef.1 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man1/localedef.1 b/man1/localedef.1
> index b41d040f7..216883422 100644
> --- a/man1/localedef.1
> +++ b/man1/localedef.1
> @@ -65,7 +65,7 @@ argument is interpreted as follows:
>  .IP \[bu] 3
>  If
>  .I outputpath
> -contains a slash character ('/'),
> +contains a slash character (\[oq]/\[cq],

I'm not convinced we want those.  Unslanted single quoted are nice becaus=
e they match C syntax, don't you think?
I'm holding this patch for now.

I've applied [10, 14].

Cheers,

Alex

>  it is interpreted as the name of the
>  directory where the output definitions are to be stored.
>  In this case,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------OUKTZ7HFN7V0i7KT9oiZtLFm--

--------------5pSnzq0zl8tPHnGO5G3XB0Q9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPln5EACgkQnowa+77/
2zJFbw//dyDJ4DSFzdWFBXXuFzyIeju17szw1DUP0T93ELydxRIxFPZna+wdnXOA
KZnIF/zbqcF0vSVImERzZrl8mu2LQ50jzZPuMM7k/POFkMa2+UP411xcv6YIq2NB
sBkjm7SlMJf9R4jrxOBaM8bs5hOrkZ1E7rpeWuKowEiDndnSVhQQizUufUkyLZlo
fyXlZyg4DKquPXPBJl3Ua+OjKo3FNGmrXkCXi6jIcaU+rVNyPzd1Z/IvSlEn3v6g
KyDd/ly+xwUBM9SrIsS3fu0SuOin3d0lOUFoV9PVQBZAQUJ/xGHgIYu4r9yH2ZzA
1dCtf3jiKeWv/njbZkv9bHa9Hg2/2QqfeqPsNnjIUox+V3PBqQQwTNFHI9kzUyan
KRXLtm+BNNlDAlts7A7u5CazLBvTA0vnT0LdPXHNvDo2QREyXGxKXWukO3blaFrV
d89eoBabd5qhMT9+U/LBE0MS9t1zO+KPQH0L2jGshIePDhOKCR9YYv62BBOQX0G0
9Plxl+lZeyP4cSN1Yl0kMXQZscPGKJy8Fe+hmE5iCtFtQQlM3+4n8YDrxYQlla2N
hIIuz5KVEbid5N6kmzYGNy3hYXJOFTeybBJK4Ym4kGpdHV30h0MUs3yLK4cvMWuP
Z6VFMdx4q1yNmX+0mx2WP5krdwWr4KBoazKXPHrISGM3LWE05b4=
=8iom
-----END PGP SIGNATURE-----

--------------5pSnzq0zl8tPHnGO5G3XB0Q9--
