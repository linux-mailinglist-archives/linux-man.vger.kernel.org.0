Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 465DC3664F2
	for <lists+linux-man@lfdr.de>; Wed, 21 Apr 2021 07:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231354AbhDUFlr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Apr 2021 01:41:47 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:34912 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230343AbhDUFlp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Apr 2021 01:41:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1618983671;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=T/kiZljSzseCOseU1CDKm7De1GtlVg0MiHPJ52rRNnQ=;
        b=hPwpUW6839i8tdSoEFTtXKL7NIayhFDOIAv4Y8ibo0u3iEy9xVZPxN8mtBaYH52OzVDKQC
        TLXlNnEKRh20wh0RlumUf+BMcvC/dybAz0+4y6RAtLR6jvOgyV3O9JgnTcHFe7f5i1koEq
        IjU1rO7+drtxNpHImTHOIc3wIIP8Dvc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290-2HadNEnHMrWoea-AdMi8Dg-1; Wed, 21 Apr 2021 01:41:09 -0400
X-MC-Unique: 2HadNEnHMrWoea-AdMi8Dg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2BB0189DF51;
        Wed, 21 Apr 2021 05:40:53 +0000 (UTC)
Received: from oldenburg.str.redhat.com (ovpn-113-20.ams2.redhat.com [10.36.113.20])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id DE08F5D9D0;
        Wed, 21 Apr 2021 05:40:51 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages) via Libc-alpha" 
        <libc-alpha@sourceware.org>, Jakub Wilk <jwilk@jwilk.net>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
References: <20210403194026.102818-1-alx.manpages@gmail.com>
        <20210404115847.78166-1-alx.manpages@gmail.com>
        <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
        <87y2doni1m.fsf@oldenburg.str.redhat.com>
        <365dc717-eb20-4549-9b6a-09eeadcfc89d@gmail.com>
Date:   Wed, 21 Apr 2021 07:41:07 +0200
In-Reply-To: <365dc717-eb20-4549-9b6a-09eeadcfc89d@gmail.com> (Alejandro
        Colomar's message of "Mon, 12 Apr 2021 11:09:24 +0200")
Message-ID: <87pmyoqjnw.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

>> Or, more succinctly, put the types in comments:
>>
>>    syscall(SYS_arch_prctl, /* int */ code, /* unsigned long */ addr);
>
> I'm not sure.  I see the point in doing this, but I think I prefer my
> version, because it has less noise.  But I might be a bit biased :)

Not everyone is deeply familiar with C syntax.  Anyone who uses the
example literally will be disappointed.

Thanks,
Florian

