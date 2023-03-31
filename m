Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B99876D2968
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 22:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231701AbjCaU1J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 16:27:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbjCaU1I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 16:27:08 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A79D1EFF2
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 13:27:07 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id p34so13591242wms.3
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 13:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680294426; x=1682886426;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KEgrnvB2O5RzkRmPrBkKSQ5C6AZzEuvaI+pwn0v1PX4=;
        b=nE1vPmv1YUcWwmCkkfzwosIsMbMSdw8ZSDesFC/HjKvUGrfqT22TUCJWSR5ORWOdQ6
         ys9VSDZ2AFqFhzfRX5JipbI/QajqkzVTYkCG4H4rwqciQ4YgPe3sSpL2Uq53i2BF+T6Y
         57cfjKt5GttRkM+LJfSI0Jb8df5Tmj7nhVwSCwRee32MFfPbWQSWa9tjISPUWL5iM8Jg
         xxnZloYw59HElbndIqKVEHJPQgs1qRA+JPO705ZFESFIATPKNZ5Pstg2DAGrmHpioPLE
         foWZGhEL9SkjGkoTJj2+2cIuupIqaEH4tR2VN18l35egNzqCoWDwHzCjVjowvcLLWl4d
         SCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680294426; x=1682886426;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KEgrnvB2O5RzkRmPrBkKSQ5C6AZzEuvaI+pwn0v1PX4=;
        b=eRZR49AP5rFsv/UXokwia36C9kXup7yQnp6tPNMDU/5DGbvmk9hJvwkOpHS9KJB40Y
         eZNUtTYBeVhG6DPnZ9trC5ZMFFvlbj5nd0WUhc/1kW72xoIIlNGPMf0caB6i33tIg1F/
         qoCDZAFU0oHa/aCpJOzxIopdM1U0Gewfv3JeuQESDYLOAD/U8PGxh7Px53yRvYfdIf3j
         8nsFinV0wD1jNS4NW56UiIZu+xQw3NHzYV4IXYYbrmMLcovik8R25ypELELFmBkdotvU
         5Lp0e6fnwyhLXcGBGd3LV4YtAxXm4Qfvd7R9t2+tveEkdHYp6eQZdWLZ01A+AllH1TBh
         bjfg==
X-Gm-Message-State: AO0yUKX9jsfaRSrswKp2MhIkU5elwZa1rKDTOgm93wW8EO505YT5pl72
        jGTOwTIDy4I5Fr+VH5h/8gg=
X-Google-Smtp-Source: AK7set9R+jv70iAdMaL6OdTXQU+h3mOG4AmqkGhWWBQB0l0E+iGgqY0KkFk+8bH9wTJhMnnciaTQnw==
X-Received: by 2002:a7b:c448:0:b0:3ef:294c:de50 with SMTP id l8-20020a7bc448000000b003ef294cde50mr22135345wmi.29.1680294425809;
        Fri, 31 Mar 2023 13:27:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p1-20020a7bcc81000000b003ef5b011b30sm3741292wma.8.2023.03.31.13.27.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 13:27:05 -0700 (PDT)
Message-ID: <496af066-fa96-ddd4-d420-b109f67c8645@gmail.com>
Date:   Fri, 31 Mar 2023 22:27:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3] posix_fadvise.2: NOREUSE now supported.
Content-Language: en-US
To:     "T.J. Alumbaugh" <talumbau@google.com>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org
References: <20230320222057.1976956-1-talumbau@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230320222057.1976956-1-talumbau@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6Jdz5IdqjPgj7AZzDP64N4ip"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6Jdz5IdqjPgj7AZzDP64N4ip
Content-Type: multipart/mixed; boundary="------------i1903diKaOHnvERz2HnWiPsd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "T.J. Alumbaugh" <talumbau@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>,
 linux-man@vger.kernel.org
Message-ID: <496af066-fa96-ddd4-d420-b109f67c8645@gmail.com>
Subject: Re: [PATCH v3] posix_fadvise.2: NOREUSE now supported.
References: <20230320222057.1976956-1-talumbau@google.com>
In-Reply-To: <20230320222057.1976956-1-talumbau@google.com>

--------------i1903diKaOHnvERz2HnWiPsd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi T.J.,

On 3/20/23 23:20, T.J. Alumbaugh wrote:
> POSIX_FADV_NOREUSE is now supported in Linux[1].
> Updates text regarding former no op behavior. Indicates the readahead
> policy and treatment of file pages read with this flag.
>=20
> [1]: https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@g=
oogle.com/
>=20
> Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
> ---
>  man2/posix_fadvise.2 | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/posix_fadvise.2 b/man2/posix_fadvise.2
> index 57c65c810..9e562f74d 100644
> --- a/man2/posix_fadvise.2
> +++ b/man2/posix_fadvise.2
> @@ -64,7 +64,10 @@ The specified data will be accessed only once.
>  .IP
>  Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
>  same semantics as \fBPOSIX_FADV_WILLNEED\fP.
> -This was probably a bug; since Linux 2.6.18, this flag is a no-op.
> +This was probably a bug; from Linux 2.6.18 until Linux 6.2 this flag w=
as
> +a no-op. From Linux 6.3 and beyond, \fBPOSIX_FADV_NOREUSE\fP signals

Please use semantic newlines.  See man-pages(7):
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.


Also, please format with macros such as:

=2EB POSIX_FADV_NOREUSE

instead of inline with \f.

Thanks,
Alex

> +that the LRU algorithm can ignore access to mapped page cache marked
> +by this flag. This is useful, for example, while streaming large files=
=2E
>  .TP
>  .B POSIX_FADV_WILLNEED
>  The specified data will be accessed in the near future.
> @@ -154,6 +157,7 @@ in POSIX.1-2001 TC1.
>  Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
>  default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubl=
es
>  this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirel=
y.
> +\fBPOSIX_FADV_NOREUSE\fP does not modify the readahead window size.
>  These changes affect the entire file, not just the specified region
>  (but other open file handles to the same file are unaffected).
>  .PP

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------i1903diKaOHnvERz2HnWiPsd--

--------------6Jdz5IdqjPgj7AZzDP64N4ip
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnQhgACgkQnowa+77/
2zIumA//UstaHNoGlh/0lFJ6yFg9OldWT/GkrVJkvIHQvZtpRBJolCrvQdPqpZLR
8bZ+/Makcy92SX1YuZQRGrKffcTpK74jOI509M3pQeaScSnkhpeSIoJ2BtM7oB/0
J4Pu7F7bnt+Df/eu08EzMRPWTEI7/1NKxNrHchv4PvZGW8YtB3fo0uTmwcKHamJF
+cBxv+feaRqGG5qxZFTDinAiXzJRlMpOI3d+1EVn25vKyLd8uf1p/86vBVUdDPGY
yZzYcktFFQXL1+x8zoHPUGgq8tRxSB8J+uD4Bq1aPedy7BWvuidh/ZfIpl7eWCy3
JTi2E7+nohdT1qMbNe9mrjeO8Kcuyb4A4pBobjD6xNpe/WC1YN152pkOR8jIyvk0
JMvKvX9kHVxZMixQ05UHhi40605crtVHpmbifHPj48FXRfX3u0LCp+qq+6tTH6TI
/BtB0adacfM2Y59aBkqa8ASsrEG9/TwmD/7Bj79JvbbCqvMdfc8Uw4ghJbaM8mDr
p216cHTDUaxz5IyGYWtzGO7kHfcpmQ7hIU715sLmxRM9bejiFwIcYJ2s0LebsObh
6yDhs0eedyC5UAg1oRrS+/Ywn8govXEAkJE0qzjTsp2FyEjjHuZ2AE5WggM17dLv
GWHHQN93iKc+utSQagyJtqaxxkdDT5a3DZW3/Y0/lW68zMhb22M=
=mxP8
-----END PGP SIGNATURE-----

--------------6Jdz5IdqjPgj7AZzDP64N4ip--
