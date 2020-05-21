Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 228481DCC9E
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2020 14:06:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729200AbgEUMGr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 May 2020 08:06:47 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:58929 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727905AbgEUMGq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 May 2020 08:06:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590062805;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=D4699oCOXFg/X6c5f39ztI4VdLjOgQyKuX0ATjF0vz4=;
        b=RRoL5v47/0IyuwLRrL0HaGDDQZBkLbxS4zBWh9e3Aag8MGE9JUHlRFQF6dglOqSsTaoLRM
        YW6zjx14XM748aC1CYU4bVUtUO9ZBDgzg7LxdtkqNZPuzGZv8Z4vZhwm/i73ItXaraByXs
        lcJPPDOmSWkiMAwKhpmrYQWQE7CntWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-133-MRI0lwtoMx2MZb7M-0L2hQ-1; Thu, 21 May 2020 08:06:43 -0400
X-MC-Unique: MRI0lwtoMx2MZb7M-0L2hQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 357178014D4;
        Thu, 21 May 2020 12:06:42 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-114-30.ams2.redhat.com [10.36.114.30])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 8338B19631;
        Thu, 21 May 2020 12:06:41 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] ldconfig.8: Mention new default for --format in glibc 2.32
References: <87a722a6yl.fsf@oldenburg2.str.redhat.com>
        <CAKgNAkgM-NKziND+x+LZkcgJz_LKE94BK6VYqOz2b+A2c6idJw@mail.gmail.com>
Date:   Thu, 21 May 2020 14:06:39 +0200
In-Reply-To: <CAKgNAkgM-NKziND+x+LZkcgJz_LKE94BK6VYqOz2b+A2c6idJw@mail.gmail.com>
        (Michael Kerrisk's message of "Thu, 21 May 2020 08:00:00 +0200")
Message-ID: <87a7218pbk.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk:

> Hi Florian,
>
> On Wed, 20 May 2020 at 18:48, Florian Weimer <fweimer@redhat.com> wrote:
>>
>> This reflects glibc commit cad64f778aced84efdaa04ae64f8737b86f063ab
>> ("ldconfig: Default to the new format for ld.so.cache").
>>
>> Signed-off-by: Florian Weimer <fweimer@redhat.com>
>
> Thanks for the patch. Question below.
>
>> ---
>>  man8/ldconfig.8 | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
>> index eb9c86dae..e184478a7 100644
>> --- a/man8/ldconfig.8
>> +++ b/man8/ldconfig.8
>> @@ -125,8 +125,12 @@ Cache format to use:
>>  .IR old ,
>>  .IR new ,
>>  or
>> -.IR compat
>> -(default).
>> +.IR compat .
>> +Since glibc 2.32, the default is
>> +.IR new .
>> +.\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
>> +Before that, it was
>> +.IR both .
>
> Should "both" be "compat"?

Eh, yes.  Should I send a new patch?

Thanks,
Florian

