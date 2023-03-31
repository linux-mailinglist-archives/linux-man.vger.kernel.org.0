Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEF606D28CB
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 21:46:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231331AbjCaTqK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 15:46:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbjCaTqJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 15:46:09 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 354AE49FE
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:46:08 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h17so23530981wrt.8
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680291966; x=1682883966;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=woNC7CyLtD8gsi7m/VZ3REj4HZByX66HugNCjlJ0GKk=;
        b=m2Tda4DzPgBngnCl6p2XNO115D7q9uLq0KNk/3JWNrO3xlz+p6GCIQflaaea2nzjAV
         GDqBSehFuG09M/Bm5kND3lhQh3vWZcXcqTM11zZGBFzFRtiGhfsw+l85QxPFEmL77wRQ
         +UBwNPzGmkCBp8FbdcLUBVDKgXjLkL7/bOfV759Lb2X57iNruLYxNj63WIY+4nYygE5+
         +QHR2WJ2ayKwm65L31E/Go/DngxNwEaUdkIjaOIwq8A2Xzq1bxE72ahC+G795awcIdVh
         J/OxgWTuzD53kY9PfRsn5+gRaEqhrhlOFdFMWYgD6pUVTx0q9Gv5klOgKhGSDNLS7OME
         dc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680291966; x=1682883966;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=woNC7CyLtD8gsi7m/VZ3REj4HZByX66HugNCjlJ0GKk=;
        b=tGDmJSWF+Of4TsNs/U1M0Iwf8YJ8GmcmRoOxFzukPliW5rckJAADdHhSeFHc+jvv+s
         pgGVwVI2gKNNksHmJcUhgwj+CRA/rwzpxtLkv53C0mabujsGMsEBMkAs48/3OfgxwH53
         jiayK7SIswgM45MSFgp7WQmZGhdMxG5lK2MU5ZTLW5n4iSyBaDNCjfH+pNubkU2dTqH+
         Lwd+HqnCkVyFDUhM8j0PEB6kxMEk5rn/LQNF61k6NWvrlJPIr5tyOZMlLinenRinzbUs
         xz8e03mBdtM9V6MX7MCr/Ze4fnu5wMbzd04GcL2yipekcWeVmOpZSohWi0jjP7pFNlid
         ejeg==
X-Gm-Message-State: AAQBX9fhX3PdcPgjjMR6jRsAIdZrnRUI9OeObttPXMOxda7xvddR7hw2
        Meb5olL3/7HZhp14twlBAP/ATH99iB0=
X-Google-Smtp-Source: AKy350blOZupN63mBcREXvc2AqgxGsUEEqem77Ck0Nv6Ozh7cAj3+76r/iN06r+Ekt+JaLvQxMOo7g==
X-Received: by 2002:a05:6000:1b06:b0:2ce:aa73:4960 with SMTP id f6-20020a0560001b0600b002ceaa734960mr20673220wrz.5.1680291966679;
        Fri, 31 Mar 2023 12:46:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id x6-20020a5d60c6000000b002dfca33ba36sm2980939wrt.8.2023.03.31.12.46.06
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:46:06 -0700 (PDT)
Message-ID: <d1300513-bd48-7971-0169-97b4c0f7e7c5@gmail.com>
Date:   Fri, 31 Mar 2023 21:46:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: STANDARDS, VERSIONS, HISTORY
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>
References: <c2947f22-a50c-96ef-e61c-6676968c9346@gmail.com>
In-Reply-To: <c2947f22-a50c-96ef-e61c-6676968c9346@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------aZtPbXT0NjQiMMhBS4SNgRCt"
X-Spam-Status: No, score=0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------aZtPbXT0NjQiMMhBS4SNgRCt
Content-Type: multipart/mixed; boundary="------------1T80WVVlCp6u1w0xsZtkM0si";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Message-ID: <d1300513-bd48-7971-0169-97b4c0f7e7c5@gmail.com>
Subject: Re: STANDARDS, VERSIONS, HISTORY
References: <c2947f22-a50c-96ef-e61c-6676968c9346@gmail.com>
In-Reply-To: <c2947f22-a50c-96ef-e61c-6676968c9346@gmail.com>

--------------1T80WVVlCp6u1w0xsZtkM0si
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 3/31/23 21:44, Alejandro Colomar wrote:
> Hi!
>=20
> I rewrote these sections.  That's the reason I'm being slowish in
> replying to email, and now I'll be checking old mail for some time, so
> I may still take some time to review some mails.  Sorry; I hope you
> find it worthy :)
>=20
> Please comment on this recent patch (currently the commit at HEAD) if
> there's anything you'd like to improve.  It's a huge one, so reviewing
> it would be crazy, but feel free to comment on anything you don't like
> about these sections now that I changed them.
>=20
> TL;DR:
>=20
> STANDARDS now almost only covers C11 and POSIX.1-2008.  Everything
> older goes to HISTORY.  Soon (as soon as the new standards are
> published, so one year or so), STANDARDS will only cover C23 and
> POSIX.1-202x (2023?), and C11 and POSIX.1-2008 will be moved to
> HISTORY.

Also, the wording in these sections has been made consistent, and in
most cases, there's even no wording, but rather a list of standards or
systems in which an API is defined.

>=20
> VERSIONS mostly covers variants of an API in different systems, or
> different APIs that provide the same functionality (less often).
>=20
> Cheers,
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------1T80WVVlCp6u1w0xsZtkM0si--

--------------aZtPbXT0NjQiMMhBS4SNgRCt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnOH0ACgkQnowa+77/
2zLavQ//bVvEnhIRiuiU/QAIuRra1cLTeRb+uyvgf778ylV+9EDYIojsneThFStJ
rMF7OXFOwz043P/VnNo9+jNB/psU+DdeED7zZebPhiL81gCYfd1PQR07eqPl9ZZ0
45P82hdo7AmmzfcuyzOedojHsdPZBqIRFTMlhjUrWv97ULYtGFLuC1xJf/bXCbMP
AwtwCKJdyDzZIS619TEMjbh1YkI8Q2bQ5vSEGa3N8S7hLiQss9JPW/MLpdW2b1iY
5b84SfzeckwC8O6lzLAN5OVDDEQia7O4xE88btV4sC8pdhMcMtBkKeTi9htEBQe3
W2xMkuAw55cMofYbB5vKWbbtnJiC+/ak151/RX6xQTfTWnXWle7mMtrE1Jer8Dj/
I8D4TznctFHcbai8n7rtXA8lgYKlRTg/BReC5bQVoeIGGxhwcbOHLq93pn9SQbyL
tQaGSqrzPxtb+B1665XNg/N7MGsx/CNiIrxVX3B6vEETd0QJ/4gbRU2++2Gb7H6C
5g+V8CAQ0q9OhGecE4wHYj/eVRnyMPYNAbYMfjByPx7JLGsGWrfVtC7DAH0VvnWa
Kk+mS9o4UsUrSVK6Adp0Ss2fuApauhZlL5ldq6h0a0dXvthz0KZPL9MefrAjorMS
DbCRviM/x71GrIm8rHjL6dP07n5Wqm9qo74p4tkjwtZqAir+8Vc=
=wEHc
-----END PGP SIGNATURE-----

--------------aZtPbXT0NjQiMMhBS4SNgRCt--
