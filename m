Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5839C68F91B
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:56:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229718AbjBHU4T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:56:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbjBHU4S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:56:18 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 417FF233D1
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:56:16 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id a2so17865917wrd.6
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 12:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YPa87wToFCXa1jeTVWiMYflK6C40JCo562dNftzYDKU=;
        b=Qn7/4zWCrMIzQOj/q88pI/94jdbafL3DCVaviNiTt8HyNHL/7pqYOyvaRL6eh4Dj7j
         v7V/NpsWg0sjZ7bNqkg8pP9fc9unNbmQo3vU9OSeJppTaVD8slGr5SlPYuK1EYnzzN0Z
         Wd4RB3nObjIfwl5aYqJcCeMatLn0Xlzerx9MEZBhGXsWSbon+eYfqx58Twu1/JhuI0/5
         x3gDrrB2Im0B6GFVTw/3Qc43Ynk4SeeUN4XUZwNwusvtQYf16MZKI9xUHfIi++iNfcTJ
         /4LzP4Wd3Zb2U1oS8ux8Jl17Ka2OlLVvvm8sbn5JfkyavCoZ5pPcgpXFXI4S5Jjn5Q4w
         nBBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YPa87wToFCXa1jeTVWiMYflK6C40JCo562dNftzYDKU=;
        b=zjzRBKea54AX+mRUNEU/KcBuc11MfXZ+dMZqqxfR4AsOKf0NUfDBSuYAePWmrfRmN6
         a3bKbfzi7Mt/vMw5CdChg9VCk/QfCksFz4gndQ8XIPBMUEcR/RMXvnQGQFejFtxLfikf
         3RdQP570FEDWovu0zwGrGl+e3JPd47H3aN9Wbr9DzL0PjFlor5ekxHYRZyvZ1rA2hWpQ
         8OWJ7i6EXYnyRA7wNTxuyoGK1HZU+V/Su4doxjh8MiHqJlgnn/f4Cv45k1og2i/yzH9h
         wBdBm3tkS+y80wQ6XzvsRCascMRzG0Zu2LxvPF45F9KxH5kEQ/6y8W4+L+Xgj4wowgZH
         fYYA==
X-Gm-Message-State: AO0yUKWrp4YB4La/u+ZgWNfXoHooaKEIBEZku52DNNleMtACwfymsFsJ
        nFhjrcQb7WmhN8rXNV+pqic=
X-Google-Smtp-Source: AK7set/4+BHj3PwBVFvoMGS2y1RHoEkk+lIgnTq9iBKCh4d6gVJoolnAUY9lzyP+KPnZ24JbLSQMeQ==
X-Received: by 2002:adf:f610:0:b0:2bf:ceef:7fd8 with SMTP id t16-20020adff610000000b002bfceef7fd8mr7718354wrp.39.1675889774601;
        Wed, 08 Feb 2023 12:56:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w5-20020a5d6085000000b0029100e8dedasm14247448wrt.28.2023.02.08.12.56.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 12:56:14 -0800 (PST)
Message-ID: <1fec0c50-ecb5-6a64-87f4-7d4165b72212@gmail.com>
Date:   Wed, 8 Feb 2023 21:56:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
In-Reply-To: <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0KbM6neKx0tKm6rwDTzTA0L0"
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
--------------0KbM6neKx0tKm6rwDTzTA0L0
Content-Type: multipart/mixed; boundary="------------InPMRANlPgDA20CK8N3RUglX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <1fec0c50-ecb5-6a64-87f4-7d4165b72212@gmail.com>
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
In-Reply-To: <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>

--------------InPMRANlPgDA20CK8N3RUglX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 2/8/23 21:55, Alejandro Colomar wrote:
> Hi Brian,
>=20
> It seems using --inline is not what we're looking for.  Could you pleas=
e try with --no-attach?

Ahh, no sorry.  It might be enough.  It seems it has it attached, but I c=
an also see it in the email itself.=20
>=20
> Thanks,
>=20
> Alex
>=20
> On 2/8/23 21:27, Brian Inglis wrote:
>> man2/: use C digit separators with \\[aq] to show "'" or ISO/IEC
>> suffixes to clarify long binary, octal, hex, decimal numeric strings;
>> use consistent interval notation for value ranges;
>> fix minor discrepancies.
>>
>> [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
>> [PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed va=
lue
>> [PATCH 03/11] man2/: use consistent interval notation for value ranges=

>> [PATCH 04/11] man2/open.2: punctuate octal perms with digit separators=

>> [PATCH 05/11] man2/reboot.2: show BCD dates in hex not decimal
>> [PATCH 06/11] man2/reboot.2: punctuate hex in docs with digit separato=
rs
>> [PATCH 07/11] man2/statfs.2: punctuate hex in docs with digit separato=
rs
>> [PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit separato=
rs in ranges and example docs
>> [PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
>> [PATCH 10/11] man2/futex.2: change limit to use ISO suffix
>> [PATCH 11/11] man2/: punctuate long numeric strings with digit separat=
ors
>>
>> Brian Inglis (11):
>>   man2/shmget.2: fix limit units suffix from SI to IEC
>>   man2/spu_run.2: fix example comment status code or-ed value
>>   man2/: use consistent interval notation for value ranges
>>   man2/open.2: punctuate octal perms with digit separators
>>   man2/reboot.2: show BCD dates in hex not decimal
>>   man2/reboot.2: punctuate hex in docs with digit separators
>>   man2/statfs.2: punctuate hex in docs with digit separators
>>   man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges=
 and example docs
>>   man2/getrandom.2: change limit to use IEC suffix
>>   man2/futex.2: change limit to use ISO suffix
>>   man2/: punctuate long numeric strings with digit separators
>>
>>  man2/add_key.2         |   2 +-
>>  man2/adjtimex.2        |  12 ++---
>>  man2/clock_getres.2    |   2 +-
>>  man2/clock_nanosleep.2 |   2 +-
>>  man2/eventfd.2         |   6 +--
>>  man2/execve.2          |   2 +-
>>  man2/fcntl.2           |   4 +-
>>  man2/futex.2           |   2 +-
>>  man2/getitimer.2       |   4 +-
>>  man2/getrandom.2       |   2 +-
>>  man2/gettimeofday.2    |   2 +-
>>  man2/ioctl.2           |   4 +-
>>  man2/ioctl_console.2   |   2 +-
>>  man2/ioctl_getfsmap.2  |   4 +-
>>  man2/ioperm.2          |   2 +-
>>  man2/kexec_load.2      |   2 +-
>>  man2/link.2            |   4 +-
>>  man2/msgget.2          |   2 +-
>>  man2/nanosleep.2       |   4 +-
>>  man2/open.2            |  32 ++++++------
>>  man2/pciconfig_read.2  |   2 +-
>>  man2/perf_event_open.2 |   2 +-
>>  man2/personality.2     |   8 +--
>>  man2/prctl.2           |   2 +-
>>  man2/read.2            |   2 +-
>>  man2/reboot.2          |  24 ++++-----
>>  man2/semget.2          |   4 +-
>>  man2/sendfile.2        |   2 +-
>>  man2/shmget.2          |   2 +-
>>  man2/sigaction.2       |   4 +-
>>  man2/spu_run.2         |   8 +--
>>  man2/statfs.2          | 110 ++++++++++++++++++++--------------------=
-
>>  man2/statx.2           |   2 +-
>>  man2/syscall.2         |   2 +-
>>  man2/timer_settime.2   |   4 +-
>>  man2/timerfd_create.2  |   2 +-
>>  man2/truncate.2        |   4 +-
>>  man2/utimensat.2       |   6 +--
>>  man2/write.2           |   2 +-
>>  39 files changed, 144 insertions(+), 144 deletions(-)
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------InPMRANlPgDA20CK8N3RUglX--

--------------0KbM6neKx0tKm6rwDTzTA0L0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkDG0ACgkQnowa+77/
2zI4Qg/8CRnQFyhOavHNOgHpyT+qsDxwHckPnBMz1AQvIlVC40mvQ6cDAZsrXbN2
3swUwqVWP+XdlAk5JFeCN1n74Plp6m7lXLAhg+PT28CIJlJ/TEp0jdQzJWaVngF4
SV7pf/Z7MnLTcM/9tPY0Oo0hqcCgs5mOPGI+aODQhMDYv/xNgH4LpnWsmT9G01ge
SHofzeJiqWj7SHlhqTsEw2QQU+xi1ItBnGnuRrkRUaNTgtmPTzSV+hfKq9wb+lTU
7mBm5ubnX9nypD1yhHtMxZiERpOlOUTAGCq0o4hnxu+4n7MtQmWDWw29n95EDsqP
zoSBNDmxzR/Vsk5VPKiZGq432QLbg8WH7TCDgd6FNUGvA8ujAhXDa6oJu1hIh3Tg
+X2Ak0Ltdf8PeXzWU5YyJ9LJ+AxkHDl5BO1Ehxa3/Wlrb86Ml88XQ4F1XogYxqbT
oeqNqTuFueF0GgDtmchlMGnLfZQR54RE15bdokNOKmSCJ/sSqDXe99yx8RHMoRh5
97TzMNb5umTwnUujlp3vxirpV+KA06XV8Do9Jw5jz6MUwRjmCyrB7xREQR1FaVxu
pzAjelA4XPap4OHRtGGT7qAk1y2ORWpk8RpN8WExEPzn7/9dHki0TIidhW3BfjGz
sxWzBFX9SJ8YxULZDEiImq1VQgikkq9cAIj6E/HCP/Y61wg3m24=
=rZOU
-----END PGP SIGNATURE-----

--------------0KbM6neKx0tKm6rwDTzTA0L0--
