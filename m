Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 708A1276179
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 21:55:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726381AbgIWTzb convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Wed, 23 Sep 2020 15:55:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726199AbgIWTza (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 15:55:30 -0400
Received: from herc.mirbsd.org (herc.mirbsd.org [IPv6:2001:470:1f15:10c:202:b3ff:feb7:54e8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4381EC0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 12:55:30 -0700 (PDT)
Received: from herc.mirbsd.org (tg@herc.mirbsd.org [192.168.0.82])
        by herc.mirbsd.org (8.14.9/8.14.5) with ESMTP id 08NJskOO003700
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
        Wed, 23 Sep 2020 19:54:48 GMT
Date:   Wed, 23 Sep 2020 19:54:46 +0000 (UTC)
From:   Thorsten Glaser <tg@mirbsd.org>
X-X-Sender: tg@herc.mirbsd.org
To:     linux-man@vger.kernel.org, libbsd@lists.freedesktop.org
Subject: Re: [IDEA] New pages for types: structs and typedfefs
In-Reply-To: <CAKgNAkizCjN9m0T3m9ATqHVDNyK_m5uSG2+_jVSEsT12UMLzxw@mail.gmail.com>
Message-ID: <Pine.BSM.4.64L.2009231950540.18540@herc.mirbsd.org>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com> <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com> <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
 <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
 <CAKgNAkiKyK6=QHoopQwBAVe6ACKY+JXGMyr4KzzXkofg560BQA@mail.gmail.com>
 <Pine.BSM.4.64L.2009222032470.12616@herc.mirbsd.org>
 <CAKgNAkizCjN9m0T3m9ATqHVDNyK_m5uSG2+_jVSEsT12UMLzxw@mail.gmail.com>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael Kerrisk (man-pages) dixit:

>[Thorsten, I have removed you from the CC because I get persistent
>bounce messages whenever I send you mail. Hopefully you see this reply
>via the list.]

(I’m doing the same, Googlemail doesn’t work with standard eMail.)

>Obviously, it is a gray area, but there's a significant difference
>between quoting a sentence or three from the standard and
>reproducing/redistributing the standard.

True, but taking quotes is severely restricted at least in Germany.
That being said, if the quoted parts are trivial enough to not fall
under copyright or if copyright exemption due to interop applies,
it won’t be a problem… but better try to avoid it altogether.

>> I know that some POSIX documents were re-released under a free-ish
>> licence some time ago for inclusion into some manual pages, but I
>> don’t have a reference for that and don’t know the scope.
>
>Yes:
>https://lwn.net/Articles/581858/

Ah, great!

>While I'm pretty sure they would allow this without problem, I'm
>wondering if it's worth the effort. Ideally, we'd have text written by
>someone in their own words. Reproducing the text of the standard has
>limited value, since people can in any case consult the standard
>directly.

Right.

>Alex, how about we just go much simpler, saying something like:
>
>[[
>This type represents floating-point status flags; for further details
>see fenv(3).
>]]

Yes, referencing the already-existing “donated” pages would work
the best.

Thanks!

bye,
//mirabilos
-- 
Stéphane, I actually don’t block Googlemail, they’re just too utterly
stupid to successfully deliver to me (or anyone else using Greylisting
and not whitelisting their ranges). Same for a few other providers such
as Hotmail.
