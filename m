Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D435D691657
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:46:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbjBJBq5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:46:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230107AbjBJBqx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:46:53 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C7EA185
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:46:46 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id y1so3691680wru.2
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=beRIybEJkTuYxnngmddcCWfnJ/s5vkhgWPo1SryLldM=;
        b=jukab3F1x8aN30G8hSr4Ci0Ao8feWN2x6zFvnPReIQcYafOqGDIpJijVab2v84kSuH
         qvLYmw8cpQ60GfpuMd0jF2CMdXQUQAipZ6OmslTra5+CrnMjLW+yui1YjEJDPoyvXDBK
         Qzs10bVxhUNLWDyh5RnNS3cQVRWZCyz01gl8Dj24VC0FZ8vvCkZpQWpvFO81Cx/yh7F4
         REgl65q5an+IPyrzJqUhY+FM/SmTbn61QbL+UE1XhLPBHXbun/HsTvhVtG4Qq4E9ZW4E
         wdKHuIhzwzXxpZI6MvcFpxbQziYUcRi7RJdFzxN0q6vnRlreuKHz0CcLBQHW1YHBflo7
         aJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=beRIybEJkTuYxnngmddcCWfnJ/s5vkhgWPo1SryLldM=;
        b=qCHT4BgePJrnu7P8faBn8CVZpvLNYve10an49PNuWWqtfv1yk+LOvWpEkGBUIeT6bz
         d2rpOS2hki1r+qaZ30/LG7himm6Rz7eXKAB6zsiAIKC975GDghlpnU0u6nk8M2M6VRNn
         2YVRjXlioXF6wO/Hjus6RRp6E+JqFsR7CEdlHr5EZNgs0Zjq+7wFvmOs5fACola3Nwk3
         yA9drwhXyUDbSUQfT6iHtUJnXG+OdKHKjC2d++3VIXe9EFpQcOZqWoWj3Bw3ToBl2uRx
         6kMFZkaY8h1ZjoLfI3+Z15UsKwrNSxpQo/FalYJZxvKpsYB3tZDS7EkYkKc9ZAuz28q6
         n3hw==
X-Gm-Message-State: AO0yUKUhxZ5R8s+l7ZGKQ0mqjzjWIK3aupujLQ4HuTb8WT8zI1g9Ns20
        Cd7GQotLqouMA+8I6dhUETY=
X-Google-Smtp-Source: AK7set85pLCQ+B0vlT77RVmf6txT59SAU2enWqnPBINCFui9Wq9s2QxkZj1V8uqsAcKWjfxzwjFdgw==
X-Received: by 2002:a05:6000:1803:b0:2bf:afaf:9d71 with SMTP id m3-20020a056000180300b002bfafaf9d71mr12052732wrh.48.1675993604782;
        Thu, 09 Feb 2023 17:46:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v2-20020a5d6102000000b002be5bdbe40csm2397013wrt.27.2023.02.09.17.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:46:44 -0800 (PST)
Message-ID: <8355f859-f786-b635-a972-d30a3def16f8@gmail.com>
Date:   Fri, 10 Feb 2023 02:46:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 20/20] adjtimex.2: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230209181150.yev5gc3ge5sgaro5@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209181150.yev5gc3ge5sgaro5@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IJl9Ray4ahlXoG0oKAdB3N06"
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
--------------IJl9Ray4ahlXoG0oKAdB3N06
Content-Type: multipart/mixed; boundary="------------CKMY6KZ0MpFZSqO7VKASuCpb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <8355f859-f786-b635-a972-d30a3def16f8@gmail.com>
Subject: Re: [PATCH 20/20] adjtimex.2: srcfix
References: <20230209181150.yev5gc3ge5sgaro5@illithid>
In-Reply-To: <20230209181150.yev5gc3ge5sgaro5@illithid>

--------------CKMY6KZ0MpFZSqO7VKASuCpb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2/9/23 19:11, G. Branden Robinson wrote:
> * Stop manipulating adjustment and hyphenation around a table.
> * These could be safely done within the text block, but even that is no=
t
>   necessary, since what is in the next block is a single word, so no
>   adjustment will take place, and to prevent hyphenation of a single
>   word, \% is cheap and straightforward.  So do that.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

Patch applied.

Thanks,

Alex

> ---
>  man2/adjtimex.2 | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>=20
> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> index c2ee2156d..6f2c5c313 100644
> --- a/man2/adjtimex.2
> +++ b/man2/adjtimex.2
> @@ -537,19 +537,15 @@ capability is required.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> -.ad l
> -.nh
>  .TS
>  allbox;
>  lbx lb lb
>  l l l.
>  Interface	Attribute	Value
>  T{
> -.BR ntp_adjtime ()
> +.BR \%ntp_adjtime ()
>  T}	Thread safety	MT-Safe
>  .TE
> -.hy
> -.ad
>  .sp 1
>  .SH STANDARDS
>  None of these interfaces is described in POSIX.1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------CKMY6KZ0MpFZSqO7VKASuCpb--

--------------IJl9Ray4ahlXoG0oKAdB3N06
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPlogMACgkQnowa+77/
2zILDw/9GBPc5s9X3Emg9XBS0O+Hq/YsIjKUKZe8k1jH5v3w0FCaDefIj3bRtZ0n
gtb8/Uv500QoFc4/x22xnJOad/KwW3qwnokNYgxXhlk5Hnu9YfTxd6x3l8cde/NB
KzYbZo3P9e0+XxfcxV9Nl/4fvot/Ku9p7VMIf6jJ6KWVqfJpKcRDu0WQR9vHXgH5
r8wFRAYvRpkmmpBsk13CktsaP11C3IFpqIY1fwEjIPDphD8X7LS502H+BBlf3Fw+
awHLJc+KrcksRjeED+QGIOp0jVXq1zIoA0KwSGtBLDYojMsz8GuseSmKV9RL3H14
MRLZTP+DGgzSQUXDSlFjQ5tK08X/pPRyn1eylC397+xWtA71KKqSI9AszBtlhLzH
YF4Kti2ITOoydxE7TPEr/4PH7wH+2obilSVRzOCiYwKW/PWyBR6xUTKZ8vIe9KUy
9RgW3XIzUy0t8HwiIelwYVDoiLQzWtJwYVbZ+4AU2Mv1zhiHdrU6LjqutD++GCWI
Ap64Tp/TQbyLgo8hFATscfhxEff7y1/TRmlwzmA7rf0aP9sFgajUHDSl4iCRgRR+
t0lvKvM+sIYiVXoR5hgJtvja1j3ouwviWluTj7ag4yYNfnbLVWDpwBJatEumRWYC
kvec7BjAuFVJJmnDyCg123JkK6E+ILhCyKxBvrrwyIXrf1NRo3U=
=NDGa
-----END PGP SIGNATURE-----

--------------IJl9Ray4ahlXoG0oKAdB3N06--
