Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC4D5274A3D
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 22:40:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726576AbgIVUks convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 22 Sep 2020 16:40:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726179AbgIVUkr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 16:40:47 -0400
Received: from herc.mirbsd.org (herc.mirbsd.org [IPv6:2001:470:1f15:10c:202:b3ff:feb7:54e8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E68E5C061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:40:43 -0700 (PDT)
Received: from herc.mirbsd.org (tg@herc.mirbsd.org [192.168.0.82])
        by herc.mirbsd.org (8.14.9/8.14.5) with ESMTP id 08MKcDn7021107
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
        Tue, 22 Sep 2020 20:38:15 GMT
Date:   Tue, 22 Sep 2020 20:38:13 +0000 (UTC)
From:   Thorsten Glaser <tg@mirbsd.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        libbsd@lists.freedesktop.org
Subject: Re: [IDEA] New pages for types: structs and typedfefs
In-Reply-To: <CAKgNAkiKyK6=QHoopQwBAVe6ACKY+JXGMyr4KzzXkofg560BQA@mail.gmail.com>
Message-ID: <Pine.BSM.4.64L.2009222032470.12616@herc.mirbsd.org>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com> <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com> <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
 <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
 <CAKgNAkiKyK6=QHoopQwBAVe6ACKY+JXGMyr4KzzXkofg560BQA@mail.gmail.com>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael Kerrisk (man-pages) dixit:

>I think quoting POSIX is fine (fair use etc.)

“fair use” only applies to the USA. For pieces quoted under
USA “fair use” copyright still applies in all other countries,
and, worse, you can’t issue a licence for it (as you don’t own
it).

https://pubs.opengroup.org/onlinepubs/9699919799/frontmatter/notice.html
specifically reserves the copyright for POSIX.

https://pubs.opengroup.org/onlinepubs/9699919799/help/terms.html
specifically does not issue a licence for reproduction.

I know that some POSIX documents were re-released under a free-ish
licence some time ago for inclusion into some manual pages, but I
don’t have a reference for that and don’t know the scope.

Please get explicit permission from The Open Group before quoting
from POSIX in anything you intend to distribute to the general public.

Thanks,
//mirabilos (current hat: Debian Developer nōn-US)
-- 
I believe no one can invent an algorithm. One just happens to hit upon it
when God enlightens him. Or only God invents algorithms, we merely copy them.
If you don't believe in God, just consider God as Nature if you won't deny
existence.		-- Coywolf Qi Hunt
