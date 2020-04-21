Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86C901B314E
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 22:36:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726039AbgDUUgw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 16:36:52 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:52412 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725850AbgDUUgw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 16:36:52 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id EBBF4160059;
        Tue, 21 Apr 2020 13:36:51 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id VihQdR8JdwQx; Tue, 21 Apr 2020 13:36:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 1E7A91600C3;
        Tue, 21 Apr 2020 13:36:51 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id SX9rzBrn3R_P; Tue, 21 Apr 2020 13:36:51 -0700 (PDT)
Received: from [192.168.1.9] (cpe-23-242-74-103.socal.res.rr.com [23.242.74.103])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id D98AA160059;
        Tue, 21 Apr 2020 13:36:50 -0700 (PDT)
Subject: Re: Errors in man pages, here: tzfile(5): Typo?
To:     mtk.manpages@gmail.com
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>,
        Time zone mailing list <tz@iana.org>
References: <20200419064834.GA32494@Debian-50-lenny-64-minimal>
 <149e7d6f-1c0a-400d-7c34-a1bd4d284bdf@gmail.com>
 <d9e4d306-3af0-e28a-526d-a97d832b6d86@cs.ucla.edu>
 <CAKgNAkhjVoFZiNb0qKHmEZ5VUUF9dj5Y4hr_Ma9wozgQo_WcLg@mail.gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <834d1499-0bbe-078c-a6c0-3f6499ec1162@cs.ucla.edu>
Date:   Tue, 21 Apr 2020 13:36:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhjVoFZiNb0qKHmEZ5VUUF9dj5Y4hr_Ma9wozgQo_WcLg@mail.gmail.com>
Content-Type: multipart/mixed;
 boundary="------------02EC38915AC586F5A63F0DAB"
Content-Language: en-US
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------02EC38915AC586F5A63F0DAB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/20/20 10:52 PM, Michael Kerrisk (man-pages) wrote:
> --- a/man5/tzfile.5
> +++ b/man5/tzfile.5
> @@ -41,6 +41,7 @@ in order:
>   .TP
>   .I tzh_ttisgmtcnt
>   The number of UT/local indicators stored in the file.
> +(UT is Universal Time.)

Thanks. I looked for similar problems elsewhere and found one in zic.8, so I 
installed the attached patch. This should appear in the next tzdb release, which 
is due soon.

--------------02EC38915AC586F5A63F0DAB
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Define-UT-in-man-pages.patch"
Content-Disposition: attachment;
 filename="0001-Define-UT-in-man-pages.patch"
Content-Transfer-Encoding: quoted-printable

From 2455b0ac4cefa28de7b66455984ff9df5ba74019 Mon Sep 17 00:00:00 2001
From: Paul Eggert <eggert@cs.ucla.edu>
Date: Tue, 21 Apr 2020 13:33:30 -0700
Subject: [PATCH] =3D?UTF-8?q?Define=3D20=3DE2=3D80=3D9CUT=3DE2=3D80=3D9D=3D=
20in=3D20man=3D20page?=3D
 =3D?UTF-8?q?s?=3D
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

* tzfile.5, zic.8: Define the abbreviation =E2=80=9CUT=E2=80=9D on its fi=
rst use.
(Problem reported by Helge Kreutzmann via Michael Kerrisk.)
---
 tzfile.5 | 1 +
 zic.8    | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/tzfile.5 b/tzfile.5
index cd4c483..3f13563 100644
--- a/tzfile.5
+++ b/tzfile.5
@@ -42,6 +42,7 @@ Six four-byte integer values, in the following order:
 .TP
 .I tzh_ttisutcnt
 The number of UT/local indicators stored in the file.
+(UT is Universal Time.)
 .TP
 .I tzh_ttisstdcnt
 The number of standard/wall indicators stored in the file.
diff --git a/zic.8 b/zic.8
index 0a64fbe..b57cd2b 100644
--- a/zic.8
+++ b/zic.8
@@ -108,7 +108,7 @@ and it should not be combined with
 .B "\*-b slim"
 if
 .IR timezone 's
-transitions are at standard time or UT instead of local time.
+transitions are at standard time or Universal Time (UT) instead of local=
 time.
 .TP
 .BR "\*-r " "[\fB@\fP\fIlo\fP][\fB/@\fP\fIhi\fP]"
 Reduce the size of output files by limiting their applicability
--=20
2.17.1


--------------02EC38915AC586F5A63F0DAB--
