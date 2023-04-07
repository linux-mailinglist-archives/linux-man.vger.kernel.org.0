Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3506DB3E4
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 21:04:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbjDGTE1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 15:04:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjDGTEZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 15:04:25 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 753FFE64
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 12:04:20 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id j1-20020a05600c1c0100b003f04da00d07so4749133wms.1
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 12:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680894259; x=1683486259;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1wSXW/W6h/X4S8ZXUot3tr7RbSrXTaR/ae5BYDB9vIk=;
        b=jq/GnXnTKI5cr2FPn6R0IXlaFOvNLzm9UQf5WRY1GVqed/B3DEyW4UHt0jF7tIHU4R
         JNlboY/U6P9XZbLSvF5lxynoxEWTdbdx4bUmbg+UPd+vjWfVT49w6luzn9T4K/90nnvZ
         IwnAXrmlSw0GfuxjxxTK1B6k/t2Y4MZl4WNus30c/lZDhuxhe/1SdpqyhrUxP+5c7WNT
         NxQWYSTf7CjhAXZHGrK4ICBSWXAQc9YN9DA2g6uWN1Yl12j7I1ASRjfn278NXk1ctQxC
         ulj0khVsN7ftjdDv8upMHO0l+/s4WyWk0CC1POhtHZS33u3fNDeIEkrOTG/PCu0utn6c
         swaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680894259; x=1683486259;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1wSXW/W6h/X4S8ZXUot3tr7RbSrXTaR/ae5BYDB9vIk=;
        b=VEAnrHhI42cuYtYWVnIU+PzkWL79ELXu58N/aRcPWCgDWO3CjrePrT8LIeBiLXjmQ5
         rdqIPMJu7cHqxRRMHCo9FPp610V3aHxOwGyvk2Mp/Qv6F2zKNxRANbCQLV8Mg8UbjZOD
         /YYOeoBvHGvdiENqqPgiJJSUXL/8f7uwZjamuuF3wTrAX7nvSVA8n6acGNP38JgtSeEp
         2JIJLMC6WkjKvqRct9Wy5uUd5MfOM7RMmzzllfVwxFjQOrH7NcJoTXhVF/9Oy6qdzq6s
         9q+duK8JaMjcUXSn4KnzPyxr4MB6pOfsYYaSvOrUKtlG0Yy4NK1Yc0ggD7Htww3pbfUe
         jSYw==
X-Gm-Message-State: AAQBX9ecea9TrCabGMRTmw/wm/zbpj+QepVZzYbpyfExJMB74XA98ruo
        whRkBI79BVpO54VtYas1bJw=
X-Google-Smtp-Source: AKy350aHQww151TL/Z4ugvfcq4nkbOFad39QOucQUwXNmU68HrHdLe3UOF/i5ix2rGQHJ6zqgO7aDw==
X-Received: by 2002:a7b:c7c6:0:b0:3ef:8b0:dbac with SMTP id z6-20020a7bc7c6000000b003ef08b0dbacmr1934576wmk.31.1680894258829;
        Fri, 07 Apr 2023 12:04:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t12-20020a05600c198c00b003ee1e07a14asm9372547wmq.45.2023.04.07.12.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 12:04:18 -0700 (PDT)
Message-ID: <f6ceff74-0c75-044c-6d12-756ac38c0738@gmail.com>
Date:   Fri, 7 Apr 2023 21:04:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
Content-Language: en-US
To:     Eli Zaretskii <eliz@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     dirk@gouders.net, cjwatson@debian.org, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff@gnu.org
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid> <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid> <83fs9bohog.fsf@gnu.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <83fs9bohog.fsf@gnu.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Kcod0btvEYenCufeTXctIqh6"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Kcod0btvEYenCufeTXctIqh6
Content-Type: multipart/mixed; boundary="------------eU0QVQ0Siyv0KDeZT0W6Yh0y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eli Zaretskii <eliz@gnu.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: dirk@gouders.net, cjwatson@debian.org, linux-man@vger.kernel.org,
 help-texinfo@gnu.org, groff@gnu.org
Message-ID: <f6ceff74-0c75-044c-6d12-756ac38c0738@gmail.com>
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid> <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid> <83fs9bohog.fsf@gnu.org>
In-Reply-To: <83fs9bohog.fsf@gnu.org>

--------------eU0QVQ0Siyv0KDeZT0W6Yh0y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/7/23 17:06, Eli Zaretskii wrote:
>> Date: Fri, 7 Apr 2023 09:43:19 -0500
>> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
>> Cc: alx.manpages@gmail.com, dirk@gouders.net, cjwatson@debian.org,
>> 	linux-man@vger.kernel.org, help-texinfo@gnu.org, groff@gnu.org
>>
>> ...which brings me to the other factor, of which I'm more confident: m=
an
>> page rendering times are much lower than they were in Unix's early day=
s.
>>
>> On my system, all groff man pages but one render in between a tenth an=
d
>> a fortieth of a second.  The really huge pages like groff(7),
>> groff_char(7), and groff_diff(7) are toward the upper end of this rang=
e,
>> because they are long, at ~20-25 U.S. letter pages when formatted for
>> PostScript or PDF, or have many large tables so the tbl(1) preprocesso=
r
>> produces a lot of output.
>>
>> The outlier is groff_mdoc(7) at just over one-third of a second.
>=20
> Some people consider 0.1 sec, let alone 0.3 sec, to be long enough to
> be annoying.
>=20
> Also, did you try with libpng.3 or gcc.1?

$ time man -w gcc | xargs zcat | groff -man -Tutf8 2>/dev/null >/dev/null=


real	0m0.406s
user	0m0.534s
sys	0m0.042s

But as others said, I don't really care about the time it takes to format=

the entire document, but rather the first 24 lines, which is more like
instantaneous (per your own definition of ~0.5 s).

$ time man -w gcc | xargs zcat | groff -man -Tutf8 2>/dev/null | head -n2=
4 >/dev/null
xargs: zcat: terminated by signal 13

real	0m0.064s
user	0m0.051s
sys	0m0.030s


As a curiosity, mandoc(1) seems to be faster for rendering the entire doc=
ument, but slower to "start reading".

$ time man -w gcc | xargs zcat | mandoc >/dev/null

real	0m0.270s
user	0m0.218s
sys	0m0.057s

$ time man -w gcc | xargs zcat | mandoc | head -n24 >/dev/null

real	0m0.136s
user	0m0.119s
sys	0m0.023s


As a disclaimer, I do sometimes care about reading entire documents,
but even in that case, it's not so bad.  I can read the few thousand man
pages in the Linux man-pages in about a few seconds, or a minute.  [1]


>=20
>>   Human subjects need a minimum of about 0.1 second of visual experien=
ce
>>   or about .01 to .02 second of auditory experience to perceive
>>   duration; any shorter experiences are called instantaneous.
>>   -- Encyclop=C3=A6dia Britannica[2]
>=20
> IME, 0.05 sec of visual experiences is closer to reality.

This is the time to load the first 24 lines of almost any page.
gcc(1), which is one of the longest I have, takes 0.6 s.  MAX(3),
which is one of the shortest I have, takes 0.4 s.

>=20
> Anyway, I won't argue.

Cheers,

Alex


[1]:  Here's why I do care about time to lead entire pages.  I know
      I can optimize this pipeline by calling groff(1) directly, or even
      better, mandoc(1), now that I know it's faster for entire docs,
      but since I haven't used this function for a long time, I didn't
      spend time optimizing it.

man_lsfunc()
{
	if [ $# -lt 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
		return $EX_USAGE;
	fi

	for arg in "$@"; do
		man_section "$arg" 'SYNOPSIS';
	done \
	|sed_rm_ccomments \
	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]*?(...)?\s*\); *$' \
	|grep '^[0-9]' \
	|sed -E 's/syscall\(SYS_(\w*),?/\1(/' \
	|sed -E 's/^[^(]+ \**(\w+)\(.*/\1/' \
	|uniq;
}


man_section()
{
	if [ $# -lt 2 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
		return $EX_USAGE;
	fi

	local page=3D"$1";
	shift;
	local sect=3D"$*";

	find "$page" -type f \
	|xargs wc -l \
	|grep -v -e '\b1 ' -e '\btotal\b' \
	|awk '{ print $2 }' \
	|sort \
	|while read -r manpage; do
		(sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}' <"$manpage";
		 for s in $sect; do
			<"$manpage" \
			sed -n \
				-e "/^\.SH $s/p" \
				-e "/^\.SH $s/,/^\.SH/{/^\.SH/!p}";
		 done;) \
		|man -P cat -l - 2>/dev/null;
	done;
}


man_lsfunc() is quite slow, but it's acceptable to me, since I only
run it sporadically.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------eU0QVQ0Siyv0KDeZT0W6Yh0y--

--------------Kcod0btvEYenCufeTXctIqh6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwaSMACgkQnowa+77/
2zIQsw//dC1uTLOMcgBycd7d/unylAV3AjD1pOBn4wicZbm+SPgF6VZOzcUY9Wmt
EGbtfdmKVsgLNtrQu8ppgdCGIq4VWRLSym5l7XkGFaKZruX3KGYQbXIOAshbwK0I
oZongy9vwZf6XHmNViCcChDnvuaxVWfz2N4cOs35TAxkfXRTxT38JpPW4U4Cw2mD
NLEPFcmLHMbl0ukiZAn12Mpuna8HglJBtdlJr4XZ84LpA6nHbNtdehgtZVK8w/lA
bgk749VTgE0t3ccVQLziAznKhxAtBsoe0RlQw4DxsEvDb+BJmRt6wwFDpGHpohwT
YFOzRyZFw3kwPqCzHcH72yB78gR+BoKrzTm5flN8JeK250Y0i32uMrEM8WY9H9z1
jjqeNECZQwJOQQRYes7rcyQDP5gdK+wbbXWX2Al3ak9jnvxML7PFKo1TSFzO+nAU
oxfwpjpubHp6UVE3LqzCc4MCAfVOdC45wQ2CwfOONuwgiuRRUsDIrG2mP89i3fDC
Xnqi3QUaC6i1it3hYJ3TWBQf0AYrodr7vbE2ETCAyRMUx+vnk+GDzeivQqLYaqDZ
7yzZlEaMtPTcklTvt6eaNOXTAvh+X4elusdz2LGGRtMeJ7ex2b+j6Bv2YsUpnlJn
Co77PZ1bNrbAiLI13UPQcW6+OJC0Qd+V76Nc1qZ1+iPiNirx2Qc=
=ctmp
-----END PGP SIGNATURE-----

--------------Kcod0btvEYenCufeTXctIqh6--
