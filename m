Return-Path: <linux-man+bounces-361-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ADD82D14A
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 16:42:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A87CB212BB
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 15:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3469D23DE;
	Sun, 14 Jan 2024 15:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BKxaqn5L"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A427E
	for <linux-man@vger.kernel.org>; Sun, 14 Jan 2024 15:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-203fbbff863so3551454fac.0
        for <linux-man@vger.kernel.org>; Sun, 14 Jan 2024 07:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705246948; x=1705851748; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cAxJlbkc7Vg23mf24sCHRq41wj79OcsCda994C5/E0k=;
        b=BKxaqn5LMRdCFWhNjIctqo74bNYivqUZXPirm0LWf+O552NzWfa+T0j+6viomZDagt
         dir3Xf1WQpqeO8ISwdyfVIDuJqK18D+MxtK9FmrwNE7XF+5frcbMZJR/EufyoPw19Eul
         cClRZmYdMn4N9e1NGIiQ+pM1TRrFumYLm33Xhu0KP5SFNDW7tqOgGbx0rJzBefvuFFy1
         lobQDFjQsSeh1cw2owPLH7933apuB2LlDEsf/oFVRKuU4CoId670kCTYY0TxKZ0CMlrW
         Gxad751RdnxlYIzSoKFr2dKHR7mPHY1pXQLnw/s41edCiAw5ncxRtHc59uTXK4lsx9Ul
         vbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705246948; x=1705851748;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cAxJlbkc7Vg23mf24sCHRq41wj79OcsCda994C5/E0k=;
        b=atEzFWJ8Jcu/K1F/W1p9IlZEe5RsSMWnRfqnfeW8ijUypu8dVMMl2eYD7lwOyFECVo
         iUFRnvMvNQgOS9HXzuBK9eveow64idLAfjRHqCkIEzarlXNZGP4/085YmlkkWLFCHdZU
         nlO4iQBw9BGQoLF1jv5UmZPocE5Dhp9nkh63bKHsezzAznUNU46m4ZFoCcIQHJus/fcz
         olr1tmJ7UI/IvxbjlndIHO9mJcYAqOjstbFw+9R5Swbgxf2Iu4ijm/MehXQzI3J991Fm
         Osi50LpoLh3C5tkBXdyVjbql7xCEVqPp6uyPEwu3ktMibcwq1VIkinzEcEF0azNBQkUl
         3h8g==
X-Gm-Message-State: AOJu0YxkODCdC+s+L6NcHIFbYFT1vhyj+BSRlNGl6zQQRtDpj9fylM/j
	2dF1WGnxP7sOnTE3BdbvZaoj3qPEkME=
X-Google-Smtp-Source: AGHT+IFeah0OGCjh51sMp3Jme11UdSHU5ti1WV901fVO34q9bU2vq54bGOeF9K+E13zDtS7kEF7Vzg==
X-Received: by 2002:a05:6870:7082:b0:1fb:788:e8b8 with SMTP id v2-20020a056870708200b001fb0788e8b8mr2237202oae.51.1705246948077;
        Sun, 14 Jan 2024 07:42:28 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p11-20020a9d76cb000000b006dbffa39d39sm1275004otl.55.2024.01.14.07.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jan 2024 07:42:27 -0800 (PST)
Date: Sun, 14 Jan 2024 09:42:25 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)
Message-ID: <20240114154225.5tyuiqrgwyltqmj3@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rlxoivvk3yoct4t5"
Content-Disposition: inline


--rlxoivvk3yoct4t5
Content-Type: multipart/mixed; boundary="xmzgvwmcmmkubcu5"
Content-Disposition: inline


--xmzgvwmcmmkubcu5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

All past efforts at submitting a patch for this have met with vger's
wrath and rage--even a diffstat is too much for it tolerate.  For those
who don't remember what this proposal is meant to achieve, here's a
backgrounder from October[0].

groff 1.23.0 has been out for over six months[1] and every major
GNU/Linux distribution, plus several non-major ones, is shipping it.[2]

I'm attaching two scripts, "MR-migrate.sh" and "MR.sed".  Drop them in
the directory of your man-pages checkout, and run the first with a POSIX
shell.

The migration script doesn't just alter the pages; it also generates
"before.txt" and "after.txt" files containing the man page contents
rendered as (UTF-8) plain text to verify that no changes to page content
(apart from font style change to man page cross references attendant to
the use of a new macro, which is user-configurable[3]) occur.

I get the following output:
$ sh ./MR-migrate.sh
man4/console_codes.4:324: warning: table wider than line length minus indentation
man5/proc_pid_smaps.5:88: warning: table wider than line length minus indentation
troff:man7/ascii.7:28: warning: cannot select font 'CW'
man4/console_codes.4:324: warning: table wider than line length minus indentation
man5/proc_pid_smaps.5:88: warning: table wider than line length minus indentation
troff:man7/ascii.7:28: warning: cannot select font 'CW'
SAME

Thanks again to Brian Inglis for reminding me not to update externally
generated/sourced pages (bpf-helpers and Paul Eggert's tz project).

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Regards,
Branden

[0] https://lore.kernel.org/linux-man/20231025185341.mqvn7qlm3iby4zgm@illithid/
[1] https://lists.gnu.org/archive/html/info-gnu/2023-07/msg00001.html
[2] https://repology.org/project/groff/versions
[3] You can of course find out how in groff_man(7).

--xmzgvwmcmmkubcu5
Content-Type: application/x-sh
Content-Description: MR-migrate.sh
Content-Disposition: attachment; filename="MR-migrate.sh"
Content-Transfer-Encoding: quoted-printable

#!/bin/sh=0A=0Aset -e=0A=0Agroff_cmd=3D"groff -t -dAD=3Dl -rHY=3D0 -m andoc=
 -T utf8 -P -cbou"=0A=0Apages=3D$(grep -L '^\.so ' man*/* \=0A  | grep -Ev =
'(tzfile|tzselect|zdump|zic|time2posix|bpf-helpers)' \=0A  | sort)=0A$groff=
_cmd $pages > before.txt=0Ased -i -f MR.sed $pages=0A$groff_cmd $pages > af=
ter.txt=0Acmp before.txt after.txt && echo SAME=0A# git co . # to revert=0A
--xmzgvwmcmmkubcu5
Content-Type: text/plain; charset=us-ascii
Content-Description: MR.sed
Content-Disposition: attachment; filename="MR.sed"

# Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))$/.MR \2 \3/
# Handle case: trailing punctuation, as in ".IR foo (1),".
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]]\+\)$/.MR \2 \3 \4/
# Handle case: leading punctuation, as in ".RI ( foo (1)".
s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
# Handle case: 3rd+ arguments or trailing comments.  This case is rare
# and will require manual fixup if there are 4+ arguments to MR.  Use
# groff -man -rCHECKSTYLE=1 to have them automatically reported.
s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR \2 \3\4/

--xmzgvwmcmmkubcu5--

--rlxoivvk3yoct4t5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWkANkACgkQ0Z6cfXEm
bc5Qzw//bR6V6eN64dwZPTSmJ0lN/Smy0oo4ZDbWHxOAKzS7XxOpSAJkAGPMae/J
dVjDBp8dlyj7OQ+wvgBJHUrGmpcMrux9PkK6bY9YE2we1I9QfZzRfdTe87MvNWce
0JToZ1OD8tHpxKVCXUc4TjoqqyNhFpvAzGfsP+nHuxtZhlxwJNZxuYTnT5Pu9UJQ
TgP9mIgAR5KIJx59JiaYCCHV1DtcY084NP5cns1KhOWgMt5WMGhjONdxOJ0jgbTQ
bq7dmvtvY+sgDBgJ8J38T9j/mFe1z9BMbtwzVMA0MXqN86br/dbNbnkYj2Xh2gnr
eOuNUCd+nAP7Qc9WP9Qrcli4ap4NbWPClBG+JqaX1ttYVYkjunwfLP+IwNWok13i
u6cN0Hu9RBdm/CYhqHiA8n5GnQ7/msOfa8w7RhCZW4MMqRQ3nAByAj0wUKALz0nZ
5w8NqiZt2e11kqOHd/ib6yNVm29lH+oqc/iyW5jVpC30SO8oPxUhoxcUBfNzeISy
cCGpzNg1vFKFHtnNLwUGNR8YmHtLR4SqwQAskqYEl5HJkErHo0dbcwFsg9YhE+gU
80WNMXwucI0aGV2xDwTx9xDt81WUmHmfBE/WaaaormW6xTg1HOWI1D/oWC20ax7k
Z6x9XnwehQKrq9l/tGSO3wtx0Cae0rERV96Myai3dOABT3ZuRS8=
=hYJV
-----END PGP SIGNATURE-----

--rlxoivvk3yoct4t5--

