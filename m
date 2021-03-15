Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9BE133C5B7
	for <lists+linux-man@lfdr.de>; Mon, 15 Mar 2021 19:33:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbhCOSc6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Mar 2021 14:32:58 -0400
Received: from esa1.mentor.iphmx.com ([68.232.129.153]:29810 "EHLO
        esa1.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231573AbhCOScs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Mar 2021 14:32:48 -0400
X-Greylist: delayed 426 seconds by postgrey-1.27 at vger.kernel.org; Mon, 15 Mar 2021 14:32:48 EDT
IronPort-SDR: H01nDQ4b/ZMpljLLEWxYn7AGqD5vvVibcMRy0HBzhv6el3LsEGV9/osumeiVIE744TG0n8T1zP
 566/zWxZHTnreXATbYP1vWNzHWRSbEaVm2YKepcHtA80XOaXKTXHegyW/SLQIBalpHy6udHHJ6
 Y0eWeLpneHq2qc6p2VIC6P9GSJAYjqcV2PX/KTyoqtm+Ypk2vwsaKFN9RlOEKYOGhYLdfjHUUN
 W3u3gZICfpCtrgd9S2Gy8wMD4ArHURxezyDT/2N74xfGutbaxHdVwFJggW1vLSDrtnM8mJoPSA
 gVs=
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; 
   d="scan'208";a="61445791"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa1.mentor.iphmx.com with ESMTP; 15 Mar 2021 10:25:42 -0800
IronPort-SDR: Q8ZRbjnlCcRkvsbFNRej313EryolFdTHZUkKTy4IO1WZwFk4WeLDwZfpQqtDrOL2YZTc1gla45
 Vbs5hW8ANizxVHEABjQGT+fUT4jbUFPfOreq46Zchqvg8XQarCp4qoT+v3TA3wfP0z39xrxJn2
 xGBJUfVqZxZSpmWB3H/xVYox7FbpFcJxPoNucJP6cA0kjXcwgBBaWyxY3NIPa63Ap8IQo+RGRJ
 beIDezBFG7Arzw9WZKv0U7UjDYrdE6YLVNzQuhPkkA+u4zEOBvQeIBNAMrWyTTh3z3MS1bt/Vf
 Hp4=
Date:   Mon, 15 Mar 2021 18:25:37 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Zack Weinberg <zackw@panix.com>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH] Various pages: Remove unused <sys/types.h>
In-Reply-To: <CAKCAbMiJO8gq7LoDi-iTvmqvDpwUXXnTs8ABHXvin-psyo3+QQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2103151819440.20846@digraph.polyomino.org.uk>
References: <20210314160134.127878-1-alx.manpages@gmail.com> <CAKCAbMiJO8gq7LoDi-iTvmqvDpwUXXnTs8ABHXvin-psyo3+QQ@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-05.mgc.mentorg.com (139.181.222.5) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 14 Mar 2021, Zack Weinberg wrote:

> I endorse this change.  For glibc, if the header file containing the
> function prototype doesn't also provide everything you need to call
> the function, it's a bug (except for a few cases where the relevant
> standards prevent us from doing this, e.g. a function that calls
> vprintf will need the macros in <stdarg.h>, but the C standard
> specifically forbids <stdio.h> to include <stdarg.h>).

And in particular, where older POSIX doesn't require the types used in the 
function declarations to be defined by a header, but permits them to be 
defined by virtue of the general *_t reservation in POSIX (that's not in 
ISO C), it's appropriate to define those types whenever declaring 
functions that use them, rather than only for the newer POSIX versions 
that require those types to be defined alongside declaring the functions 
that use them.  (So we could simplify some of the conditionals in unistd.h 
and remove the "# define uid_t __uid_t" and similar hacks in 
conform/data/unistd.h-data, for example.)

-- 
Joseph S. Myers
joseph@codesourcery.com
