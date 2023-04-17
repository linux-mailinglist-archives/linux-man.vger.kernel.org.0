Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7676E4FFC
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 20:14:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjDQSO5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 14:14:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbjDQSO4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 14:14:56 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44416D2
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:14:55 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id q5so14253913wmo.4
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681755294; x=1684347294;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mlIMw5owoedY/3pSGLubDG1Edb/CEfI2PidIK5euE4s=;
        b=s5xMFuCnZ9mel8q3UH1fJYdgcP7qyHEeQpJe3rw6YmwCXoR/xTiDQIEQYdVuMv80gz
         0gkR95YmKOzGRNo97CL1AD+NCr9RbaoSvO/tA8yaP49snpCxQVsBsdsrMidy/mvVGRn/
         xAdDGF2QtLCVXE3Yo9SYcLp8gqQzT0lVxYKtI11peEPVMQ5Z1BBmm7jJeG7+u/x49EGp
         BBn8fvzu8FL9GnOgsg21ZfEEli5H3yHKx/sy4yc+hwbgbnt+zVtFXxD1RRoo+R7Gnle6
         gURDgJbtimCdB5TkjBuulsZrq1hG6jqicy9RggQ4+PMrMipxzXwvF9vU15FmMqVadX3Y
         HRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681755294; x=1684347294;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mlIMw5owoedY/3pSGLubDG1Edb/CEfI2PidIK5euE4s=;
        b=Grmo5kLkTl+q2DAXdjnpn9U0iRkE3xf8wQQev1FV0NqwBX0a1A9e/WqB+m6yfftw04
         Pdw9nyTUvvzSffyCDg/4T5Ip5IWkQQ+wtX4W6wRm9N9sDxkmGhNRNtRLXYMeqAF/RCro
         30/qbHfUEFoShZ48/vt+gRjXy4LNm5v140uQYy6j4S6yJS0xRddEA0vj2b9SIPqhVUKh
         YsT2ouCsRvWeTI3PjAi8GwvL3Zn8oPJ6732pA7vme9O4PYAS8pO5o+CKGooGZYQvkKU5
         KTPrKbG4B/g83cWHEqbCCk7xfLjysmiZDN5X1zwDp7XrGqjR7okZ0KmIkGkSAIpEJWEd
         5i+Q==
X-Gm-Message-State: AAQBX9fp4G9MaPUshR4sCu/d+SYR3xo3iwlANBPXogwD86zvFPk7CkdX
        md7SDXJFv3JM6wsaf+9w07s=
X-Google-Smtp-Source: AKy350b3FWv+JF11PlLSnmJGNPnQpLhO0sAvHpuQzaGZF/b2D4rlZ2e6pMpF5TFJ/WPbcsuLwmaaEg==
X-Received: by 2002:a05:600c:22c7:b0:3f0:3ab2:a7e5 with SMTP id 7-20020a05600c22c700b003f03ab2a7e5mr12246806wmg.34.1681755293703;
        Mon, 17 Apr 2023 11:14:53 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id a1-20020a05600c224100b003f072b22dbbsm12494798wmm.16.2023.04.17.11.14.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 11:14:53 -0700 (PDT)
Message-ID: <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
Date:   Mon, 17 Apr 2023 20:14:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] man*/: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230416235126.vdbiab5p5jwty4ol@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------imHX8HBhzIe1xkO0iyrmGOH6"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------imHX8HBhzIe1xkO0iyrmGOH6
Content-Type: multipart/mixed; boundary="------------EGp1KLiYJMc14uz8BLqEP06u";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Cc: Guillem Jover <guillem@hadrons.org>, Alejandro Colomar <alx@kernel.org>
Message-ID: <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
Subject: Re: [PATCH] man*/: ffix
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
In-Reply-To: <20230416235126.vdbiab5p5jwty4ol@illithid>

--------------EGp1KLiYJMc14uz8BLqEP06u
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden, Guillem,

On 4/17/23 01:51, G. Branden Robinson wrote:
> At 2023-04-17T01:19:16+0200, Guillem Jover wrote:
>> Escape dashes on dates, UUIDs, URLs, file and package names.
> [...]
>=20
> I'm a +1 on all of this except the dates (explanation below).
>=20
>> diff --git a/man4/rtc.4 b/man4/rtc.4
>> index 55dc1ff6b..b16be16c1 100644
>> --- a/man4/rtc.4
>> +++ b/man4/rtc.4
>> @@ -43,7 +43,7 @@ and
>>  .BR time (2),
>>  as well as setting timestamps on files, and so on.
>>  The system clock reports seconds and microseconds since a start point=
,
>> -defined to be the POSIX Epoch: 1970-01-01 00:00:00 +0000 (UTC).
>> +defined to be the POSIX Epoch: 1970\-01\-01 00:00:00 +0000 (UTC).
>>  (One common implementation counts timer interrupts, once
>>  per "jiffy", at a frequency of 100, 250, or 1000 Hz.)
>>  That is, it is supposed to report wall clock time, which RTCs also do=
=2E
>=20
>> diff --git a/man5/proc.5 b/man5/proc.5
>> index dc5397a22..9c0b3e2ab 100644
>> --- a/man5/proc.5
>> +++ b/man5/proc.5
>> @@ -4383,7 +4383,7 @@ Unnumbered interrupts are not shown, only summed=
 into the total.
>>  The number of context switches that the system underwent.
>>  .TP
>>  \fIbtime 769041601\fP
>> -boot time, in seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC=
).
>> +boot time, in seconds since the Epoch, 1970\-01\-01 00:00:00 +0000 (U=
TC).
>>  .TP
>>  \fIprocesses 86031\fP
>>  Number of forks since boot.
>=20
> These are parts of prose sentences and are themselves prose.  In the
> groff man pages we neither model, nor recommend, the use of hyphen-minu=
s
> signs (escaped hyphens) in date strings, as one might commonly encounte=
r
> in `TH` calls to assign a revision date to a man page, for example.
>=20
> Similarly, we would not escape the hyphen in the sentence: "While I was=

> in Quebec, I met Yves St-Denis.".[1]
>=20
> Escaping hyphens is important for material that might copied and pasted=
=2E
> I don't think these date expressions for the Epoch qualify.  If one
> wants to format the date of the Epoch, "date --date=3D@0" is less to ty=
pe.
> (In a man page, we would escape _those_ hyphens and might bracket the
> command with `EX` and `EE` macro calls.)

What do standards say about formatting dates?  Do they specify the
character?  I read some RFCs, but didn't see it specified, other than
calling it literally '"-"'.  No name of the character, or ASCII code.

However, date(1) only accepts hyphen-minus, so it would be nice to use a
compatible format, even if standards didn't mandate it.

I'll hold the patch, to allow for some discussion, but I want to apply it=
=2E

Cheers,
Alex

>=20
> Regards,
> Branden
>=20
> [1] https://en.wikipedia.org/wiki/Yves_St-Denis

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EGp1KLiYJMc14uz8BLqEP06u--

--------------imHX8HBhzIe1xkO0iyrmGOH6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9jJIACgkQnowa+77/
2zLCuA/8Dhryad5juYgBxmUfhm3LmdScH/X9yn9I3TV5qhAC7eEVW2LmZo0DxlqF
BurwI59kZ5WorPxB4ZKBKpezAr0mXqUvyEKSThL9oEY0emFqpn0wLAtk9mmcK9rv
1H+tIObEr+O2g0qtz5xZKuNknK7gQjz4WJl4v33m+s/bUU8sFdTpayIA1HVzpTVy
6h+xo2TpjTWUNUSJXqpyWHG6QHgDkZeus2Jx97PEAaipmZ7bLqg3wv3MT2/ZmNl0
XXKLL4oYQh+0YlQiB42WYeNKz/TLoPAM+mJ8C5FYOxpOCfpSP68ZAI6o00Nx0+A8
7P/cHH+oY++QjvbqlLjvGGvpceBb9XIa43+ehSuqEjOJ+PuEcIuBmWoVKRHRQ9au
oKGTipNjdchqiWd2PebzEB7nfGu5Y3mj8rcWa00hSZTorixF/zMEYcrBvAR2NRRl
te7K1vBhXGFEtDvCKEQnQeQR1g9YdWWDmr4Z963iYyjGkDCECJrtWCDNg7Pd7uAa
Uyxt3iY8Sa3fwJTf5PmEAU0mBeKrwXquZEMNpHbIDbneBISAXIL0Ui1ap++ssxWh
nKsT/CyqBZqyGUNYrE3KTw5MgqFYXKn6IgW0eug8ix4oCGYjyEeghq+FNZHpBCNd
+74UxmQgyKODshW0PZkEp1BtbBOCwORN6cUaKCSamWZ6VHM1U6k=
=yFGX
-----END PGP SIGNATURE-----

--------------imHX8HBhzIe1xkO0iyrmGOH6--
