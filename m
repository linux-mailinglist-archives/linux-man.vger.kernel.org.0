Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27F566D728C
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 04:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236228AbjDECmC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 22:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235365AbjDECmB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 22:42:01 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA5530C1
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 19:42:00 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id m8so9155688wmq.5
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 19:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680662518; x=1683254518;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ufOzHXAX0WunXmU232l0Neek/LEgyAJyFP+/kz50S74=;
        b=Lp7zRAbw3T/1vUJqySJmsoXkqctD7M1OBrj6b3LFQ1xATcfq/Lz68gc8UdjaB6G8TE
         AV4glTvoD9domxL/fx4AXIkysbUa5Kpg0h+NHkdIIWD1FRbINoI0KBOF9D49rBekgZ+A
         a7o5C4Ap+YCPV91iasg8qLjAigTzHeTdrnkUok66J6aRctP6hJuB/Hs7imbxOqZsVYay
         j6t7+51aNs6oAtMWCi9eP7F77SkBT8rg/m37sesG1WQSMgihCHQpTKihJVORKSgBuWAj
         /A7QEWk6tqcHU3m85I2cr5B1oJMI/tlDrv4/YLnMd1t9Tnv1RIBfzstVVSgcPpCDvbkS
         /k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680662518; x=1683254518;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ufOzHXAX0WunXmU232l0Neek/LEgyAJyFP+/kz50S74=;
        b=UKiiT/BTbCH2bauD7ju0IHBICdz4jrsq23Q3lXLSa8SuRPMBa9i5FMOgJrSsnLP5AQ
         qzyjBAbjKjiuTpebV+MhQ88dBqfefOKmWMy3Ev76CKG8heqcXzRY9nvOuL3Lsa5Fs+hL
         WCUVzEXWBoMv7ANtkeAtW8r9IIkAv89GU91VeeU5KU9SQOZVAA7KtUOtT/lsLqQaspYX
         eNOLi4VPTVjMEGnm9OFPrxg7Ip8749UG5GDc5dfp35NnXoKOMVKVS/mGb4vv8n57AIho
         uzURpvLHIZpCOOavpRq6T/D3OHCcDh04fsyB3+FEIkLRUihj2F8oxv1/UUuwjAQ51ORz
         Rufg==
X-Gm-Message-State: AAQBX9dP8jIgPqO/XzDR/sfxnuxokfguGKADQFIYe/HHgEy5/7wFf/iq
        7m1OjGWsObY14SzZrYT4Q7g=
X-Google-Smtp-Source: AKy350ZgcsxYkEfcNVXRCCIh9KhaBXb8/SsR0rzrZqPx9apb7gIWCRxvlPjUfe+pVms40qw/whZaLA==
X-Received: by 2002:a1c:7c0a:0:b0:3ef:64b4:b081 with SMTP id x10-20020a1c7c0a000000b003ef64b4b081mr3463797wmc.39.1680662518478;
        Tue, 04 Apr 2023 19:41:58 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m19-20020a7bcb93000000b003dc522dd25esm613705wmi.30.2023.04.04.19.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 19:41:58 -0700 (PDT)
Message-ID: <616e47e3-c09a-26cf-59aa-e38bbdde96ca@gmail.com>
Date:   Wed, 5 Apr 2023 04:41:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE
 interaction
Content-Language: en-US
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org, siddhesh@gotplt.org,
        DJ Delorie <dj@redhat.com>,
        Florian Weimer <fweimer@redhat.com>,
        Andreas Schwab <schwab@linux-m68k.org>,
        Zack Weinberg <zack@owlfolio.org>, Sam James <sam@gentoo.org>,
        Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
References: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------C1ZxwvNM4YJ58gLGO6E59Q4O"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------C1ZxwvNM4YJ58gLGO6E59Q4O
Content-Type: multipart/mixed; boundary="------------kzvBO09eIpJChkt1sUn5HAZx";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man@vger.kernel.org, siddhesh@gotplt.org, DJ Delorie
 <dj@redhat.com>, Florian Weimer <fweimer@redhat.com>,
 Andreas Schwab <schwab@linux-m68k.org>, Zack Weinberg <zack@owlfolio.org>,
 Sam James <sam@gentoo.org>, Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>
Message-ID: <616e47e3-c09a-26cf-59aa-e38bbdde96ca@gmail.com>
Subject: Re: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE
 interaction
References: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
In-Reply-To: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>

--------------kzvBO09eIpJChkt1sUn5HAZx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mingye,

On 4/4/23 07:52, Mingye Wang wrote:
> Hi all,
>=20
> In (somewhat) recent discussions about _FORTIFY_SOURCE level 3, a
> common snag to hit seems to be abuse of malloc_usable_size(). The
> attached patch is my attempt at making the situation easier to sort
> through.
>=20
> See siddhesh's comment on GitHub.[0] I wonder if the language needs to
> be stronger.
>   [0]: https://github.com/systemd/systemd/issues/22801#issuecomment-134=
3041481
>=20
> Best,
> Mingye Wang (Artoria2e5)


> From f061522764ec417e80622db557853c2d7493bbb7 Mon Sep 17 00:00:00 2001
> From: Mingye Wang <arthur200126@gmail.com>
> Date: Tue, 4 Apr 2023 13:43:39 +0800
> Subject: [PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE inter=
action
>=20
> Abuse of malloc_usable_size() is common enough to snap up Redhat's
> trials of -D_FORTIFY_SOURCE=3D3.  Warn against this to ease debugging.
>=20
> Signed-Off-by: Mingye Wang <arthur200126@gmail.com>
> ---
>  man3/malloc_usable_size.3 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man3/malloc_usable_size.3 b/man3/malloc_usable_size.3
> index 754b255de..1361e6f1e 100644
> --- a/man3/malloc_usable_size.3
> +++ b/man3/malloc_usable_size.3
> @@ -62,5 +62,14 @@ the number of excess bytes in an allocation depends =
on
>  the underlying implementation.
>  .PP
>  The main use of this function is for debugging and introspection.
> +.PP
> +.BR Warning :
> +Some programs abuse
> +.BR malloc_usable_size ()
> +to reduce the number of calls to
> +.BR realloc (3).
> +Such use will confuse
> +.BR _FORTIFY_SOURCE
> +level 3, as it only keeps track of the original requested size.

This is much milder than what I read in the linked discussions.
I would go ahead with something much stronger as suggested there,
or did you change your mind?

How about using DJ's suggestion in a CAVEATS section (I cut the
clause in the paragraph)?

    The value returned by malloc_usable_size() may be greater than the
    requested size of the allocation because of various internal
    implementation details, none of which the programmer should rely on.
    This function is intended to only be used for diagnostics and
    statistics; writing to the excess memory without first calling
    realloc() to resize the allocation is not supported.  The returned
    value is only valid at the time of the call.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------kzvBO09eIpJChkt1sUn5HAZx--

--------------C1ZxwvNM4YJ58gLGO6E59Q4O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQs3/QACgkQnowa+77/
2zJsoA//X+ilV0TatP/UdODVT7IVugWGt20JJjfKuua+F+tQzxN4K/JUP8fI4Kc1
nO89iCzdGJaDQTRmvJpj+1ReIsb647NJ/U7FgJ1jxfH7Q9xUjeJogwOBVMz2xGp1
5HPGHpnnpmUcw93aZcHdVJoSgiIX1Q4J0OnuSVh3Nao+yWxRx+4RDE1Vik8aZ2lm
uBDvYeiHnhYWXm1TXS5s0Oezz6gW1nEGSa8t9Wm/0cEsiRSbkd4eLkpl/Bt74JIN
EjOHLcz4GwhBwh5LbDGrMZHDPUO4IqnpQxN4VsMyGrXI8vfXAWG68fuOk/izQ6Vg
yEbAQNvHQiYgXdylq6ZH+OaZ2RWbryumJNVsJQL9KOXy6hqQ7e6pG7TNO7TMyxr5
jrICjXbzfD9c8+OK78ZKheBVFnn0zkGVk6C3ALdF/R9DgF0rIu+I2GHsB/Y5epiv
Juks7dCQEEaK5CmWJ0Z+KqJGbGG2+w34zSxeD5OnCJvdN4hY6/VFVM0Jrr/YbOC2
JRRKSssvchVVtyTWl1n6Ftm5PdKE7XaCsrBlJnj7pFNJXrAXDQUogxNtUUO1AYq/
ZRdCUZZkhmEycv/Cjd0MKAmGu0XcMeHl641nuXGC74h8Hn8weacN6jR+fQkbDBWP
odP5W7cApMU/7mtr0/ZaKSoPVOTecI5JydYeuwhqTiDiSIUbJ4M=
=umXi
-----END PGP SIGNATURE-----

--------------C1ZxwvNM4YJ58gLGO6E59Q4O--
