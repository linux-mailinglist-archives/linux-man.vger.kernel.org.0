Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19C3D3FAB71
	for <lists+linux-man@lfdr.de>; Sun, 29 Aug 2021 14:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235250AbhH2MgB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Aug 2021 08:36:01 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:46991 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235242AbhH2MgA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Aug 2021 08:36:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1630240508;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=+SwzYTeiMWrqMBinDJupc6mGd3xRosngl05wMwuWfWw=;
        b=T414L/TZvF1qqvoxeIxGSb1ve3dr3qKxkt8g7brJGDyD4k5jU7K4YGEuLOWX98H13GWspt
        rNXn7dVcGUX7lU/Hik6HmiEQ/TzMOS9A9mM6r9s1LoEdQVcTfJZcsHSuYERfetWKO9qFva
        hdMHdj3vMUfBHlp7KxerYKQ5xCiKv0s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-1xGLWVx7Op2JkrESmm_4-Q-1; Sun, 29 Aug 2021 08:35:03 -0400
X-MC-Unique: 1xGLWVx7Op2JkrESmm_4-Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DBBA31008062;
        Sun, 29 Aug 2021 12:35:02 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.194.140])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EF74189C4;
        Sun, 29 Aug 2021 12:35:01 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] malloc_hook.3: modernize for glibc 2.34
References: <20210810193708.10277-1-eggert@cs.ucla.edu>
        <20210810193708.10277-2-eggert@cs.ucla.edu>
        <6bb93825-0a24-75ad-9c56-9913f6e2978e@cs.ucla.edu>
        <87b23795-ac94-9ba4-087a-8c75e3d30764@gmail.com>
        <56b090e7-3b39-7a1d-5e59-1e836eb0cca4@cs.ucla.edu>
Date:   Sun, 29 Aug 2021 14:34:59 +0200
In-Reply-To: <56b090e7-3b39-7a1d-5e59-1e836eb0cca4@cs.ucla.edu> (Paul Eggert's
        message of "Fri, 27 Aug 2021 16:34:38 -0700")
Message-ID: <871r6cv37w.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Paul Eggert:

> On 8/27/21 4:11 PM, Alejandro Colomar (man-pages) wrote:
>
>> All good until here.=C2=A0 (Maybe the glibc commit that removed this
>> could go in the commit message, if you know it.)
>
> I don't know it, unfortunately.
>
>>>> =C2=A0 Programmers should instead preempt calls to the relevant functi=
ons
>>>> -by defining and exporting functions such as "malloc" and "free".
>>>> +by defining and exporting
>>>> +.BR malloc (),
>>>> +.BR free (),
>>>> +.BR realloc (),
>>>> +and
>>>> +.BR calloc ().
>> Did this change with glibc 2.34?
>
> The glibc manual changed (it started documenting this stuff) but this
> part of the implementation did not change.

The documentation is somewhat older than 2.34 and was just minimally
amended.  It's here:

  Replacing malloc
  <https://www.gnu.org/software/libc/manual/html_node/Replacing-malloc.html>

In particular, it lists additional functions that may have to be
interposed due to application use.

Thanks,
Florian

