Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96C6770AE5B
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 16:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjEUOl4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 10:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjEUOlz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 10:41:55 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D3EC2
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 07:41:52 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f60444238cso1403485e9.3
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 07:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684680111; x=1687272111;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rQ3+TH63yzYPGsS1YMgyC+ES1WvgW7p3rpuxrAyxSI=;
        b=khFd0t/K6dRY9E6aWydoIsDdOxb6Agl5feDHBh4FVGV+cBIyCZX9XA7pTgJ1jQdkmA
         LxA/H/Tngec9mlFxtCy92OFHLEAluj2tsGBYq1arFfdToghWkyiNsCdVjUSYsDEPmVqB
         QruB0aNKTfjGi6s/gMJCimuQPw2HhiO0nTB0X7TTEpp0M+usZV+8vt4mo254kKxnD65a
         1r3x/6Bg4pgWE/lpoyJMTIJlhtt7vbltKN/XGsKSX1nJKbVh4lcIn6Rw4QUoTQaoHKIH
         +2DwV/jiPFO8vbnoPhk/Z2MhA1Nsa5Qp3MZOZAG1ITL/FA/TQlN4n/zSSVcGou6pUhUX
         vOIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684680111; x=1687272111;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8rQ3+TH63yzYPGsS1YMgyC+ES1WvgW7p3rpuxrAyxSI=;
        b=GEcO5nfH8o1Zf/Iazx6Lz78olp/qQUUHe+J54kJCpm8Jew7zFgquimVrqvVVkeGL4U
         CMY/HB0UbPda/7UcJhNBedXiY2/+PKT5EIpKIF4hnylx1hNlQ/eKs8GVBGZr5EBJsvtE
         oWTRZjGelyGU6kCV0C9OJDlJ+S3xFvIX9Cd09hQo88/uQb2cwnZSpKbgtJDJkGpfCwZ9
         gIcg3Wv/HQHIRlah2Y+hpJgaghrf1c8UJdgtAeY0iNS2/K7LPQc93fu8GvQWuRumGWqY
         ZsOJ3QpNo6Sv1syfmLxPQqcT0S8rVKsRK3sYDtz+RXyriWyYrhjhCc0o/g5iCtSZ5oB/
         uOrg==
X-Gm-Message-State: AC+VfDxsxCx30wt8qdMp4YvCpibD5wHLdLOjQF6Kpz6w/mwMkOhX8V7q
        BmkK6UqE9Px/t/aOdTFaW6514oVKl1s=
X-Google-Smtp-Source: ACHHUZ4cttYTZp8K7LfHpi+9ayAFN7yAu4GlykcOjPLsq7nHarF3DWIb5krwNYrUi6gDPugdY1K4jA==
X-Received: by 2002:a7b:c04c:0:b0:3f4:9bee:b9c with SMTP id u12-20020a7bc04c000000b003f49bee0b9cmr5453309wmc.18.1684680111090;
        Sun, 21 May 2023 07:41:51 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l11-20020a1ced0b000000b003f182a10106sm5307398wmh.8.2023.05.21.07.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 May 2023 07:41:50 -0700 (PDT)
Message-ID: <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com>
Date:   Sun, 21 May 2023 16:41:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
Content-Language: en-US
To:     Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org
Cc:     Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20230521103128.8472-1-alx@kernel.org> <18117042.sWSEgdgrri@nimes>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <18117042.sWSEgdgrri@nimes>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7vjLtDWThC6EaKLNk11pbJeQ"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7vjLtDWThC6EaKLNk11pbJeQ
Content-Type: multipart/mixed; boundary="------------FY1bMM4h0TmeGjYIEyUJDAwb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org
Cc: Reuben Thomas <rrt@sc3d.org>, Steffen Nurpmeso <steffen@sdaoden.eu>,
 Martin Sebor <msebor@redhat.com>, Alejandro Colomar <alx@kernel.org>
Message-ID: <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com>
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
References: <20230521103128.8472-1-alx@kernel.org> <18117042.sWSEgdgrri@nimes>
In-Reply-To: <18117042.sWSEgdgrri@nimes>

--------------FY1bMM4h0TmeGjYIEyUJDAwb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Bruno

On 5/21/23 13:11, Bruno Haible wrote:
> Alejandro Colomar wrote:
>> This patch adds language that reflects the actual behavior, by adding =
an
>> explicit bullet that distinguishes this case.
>=20
> That is the right approach. Thanks for taking the initiative.
>=20
> But I think that more details should be added, so that programmers are
> not surprised if their program behaves differently on, say, musl libc
> or FreeBSD than on glibc.
>=20
> Find attached my take to describe the condition appropriately.

Thanks!

>=20
> Bruno
>=20

> @@ -80,6 +80,34 @@ .SH DESCRIPTION
>  \fI*inbuf\fP
>  is left pointing to the beginning of the invalid multibyte sequence.
>  .IP \[bu]
> +A multibyte sequence is encountered that is valid but that cannot be
> +translated to the character encoding of the output.  This condition

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


> +depends on the implementation and on the conversion descriptor.
> +In the GNU C library and GNU libiconv, if
> +.I cd
> +was created without the suffix
> +.B //TRANSLIT
> +or
> +.BR //IGNORE ,
> +the conversion is strict: lossy conversions produce this condition.
> +If the suffix
> +.B //TRANSLIT
> +was specified, transliteration can avoid this condition in some cases.=


What do you mean by "can" and "some cases"?

> +In the musl C library, this condition cannot occur because a conversio=
n to
> +.B '*'

I recommend either using \[aq]*\[aq] for producing valid C code,
or just having an unquoted *.

> +is used as a fallback.
> +In the FreeBSD, NetBSD, and Solaris implementations of
> +.BR iconv ,

=2EBR iconv () ,

> +this condition cannot occur either, because a conversion to
> +.B '?'

Similar stuff here.

> +is used as a fallback.
> +When this condition is met,
> +.B iconv

And here.

> +sets \fIerrno\fP to \fBEILSEQ\fP and returns

=2EI errno

=2EB EILSEQ

I know in other places in the page we use \f, but I'll fix
that at some point.  Please use macros for new code.

Cheers,
Alex

> +.IR (size_t)\ \-1 .
> +\fI*inbuf\fP
> +is left pointing to the beginning of the invalid multibyte sequence.
> +.IP \[bu]
>  The input byte sequence has been entirely converted,
>  that is, \fI*inbytesleft\fP has gone down to 0.
>  In this case,


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------FY1bMM4h0TmeGjYIEyUJDAwb--

--------------7vjLtDWThC6EaKLNk11pbJeQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRqLa0ACgkQnowa+77/
2zL7uw/+MRdxyNS6ORuDAp5oVhhrMCp+c3b2cbxJOScuALVGdt5S56+DSeIV4lvQ
NR12TT86586BDRO2xRxldECfXwz2hIqSeSJ1MLun/Gr+B1iF8eLGR9oqzrvCztSn
YSDGadjhmfqPLseg39/ppOcpFQuTHdYxspXI7Hi5WoC4I5HuthCLgu71UafOyxyM
RLmIdqkOP/IH8YrqqBiHXdtrmm0HEtkNNm0PQJ65BHuAYLBwnU0BTK3cs8v2w+JH
+JZOAmfAXRsLvE9axBIvY8nN8WiJW2nzQiDYqmo9VBRxVSS8u+1NwK1nFQQ6fDPy
oKwhVkFbAuwJR3e9hTH/a7pfod9UfQnEh4t8rm6E7c8LNRUsuYgaTh3F1fUIVTGS
WUePNopIo47BrdA1e7VozH9kaSoAaNx0vKsrHGtuUFZ5uledA3xIM9+d7hTLi/UI
3RBAEom5Q+Rnukq8IwsRnNcDj7x2/5oAYdoPCccXOx/h/R7ELrlTqO3kY9ACcVs/
+PPXEE6N5L8JOGR9+F7L5lV5O3BWAQXAjwMmwPfby0npq5OeTlwKAt2WhRstRcea
7J+H+PhtSc28kw7h5rozz9vDqMJ/XTNvSxhFpL//vg8gP+P1I9TP+LlKJBTRU109
jwHmOQtuoYf2x7x+LjRRMdd9zMScJ9A8K8hDvChFWO4iDXc6hBw=
=yIct
-----END PGP SIGNATURE-----

--------------7vjLtDWThC6EaKLNk11pbJeQ--
