Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A092227033E
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726199AbgIRR12 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:27:28 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:39266 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726121AbgIRR12 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:27:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600450047;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=m8QVUnkJLX2kUdOa2l3dBeTNdSavQsSzrNnDzyRthSQ=;
        b=iCNe2QQJaSZMgmUlkCVWEI6mRxrNMAFM1T62GUq1g9aB2qmbmi/ge8jb47xcl1c6Vk2y2I
        0veSXw44igiz9D0vNUJmRPhU5/izNLBvsZqUPBntvBXWjmDXweMfXXj8mI/71qGgPZr14x
        7B2LO210fn/Yzrr/912WR+shZPk3HMM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-weVbU0KXOOW7a93Dp1hIFA-1; Fri, 18 Sep 2020 13:27:24 -0400
X-MC-Unique: weVbU0KXOOW7a93Dp1hIFA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A68948064BA;
        Fri, 18 Sep 2020 17:27:23 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-177.ams2.redhat.com [10.36.113.177])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id AA7F610021AA;
        Fri, 18 Sep 2020 17:27:22 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
        <20200918112755.21428-2-colomar.6.4.3@gmail.com>
        <87tuvv5f24.fsf@oldenburg2.str.redhat.com>
        <3d88ecab-1c36-9081-4195-4e1fd054fadf@gmail.com>
Date:   Fri, 18 Sep 2020 19:27:21 +0200
In-Reply-To: <3d88ecab-1c36-9081-4195-4e1fd054fadf@gmail.com> (Alejandro
        Colomar's message of "Fri, 18 Sep 2020 17:53:15 +0200")
Message-ID: <87v9gb0zd2.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> I think I prefer to leave it opaque, showing only the requirements
> that POSIX and C make.
>
> There's really not much gain (basically uint and ulong cover most of the
> possibilities; and still it's not a guarantee).
> And readers might write non-portable code because of reading that.

My idea was it that it stresses that you have to use %zu in order to be
portable.  %lu works almost everywhere, so that's any easy mistake to
make because it still leads to -Werror build failures on s390 (31-bit).
Likewise for %ld for ptrdiff_t, it should be %td.

> On 2020-09-18 16:34, Florian Weimer wrote:
>> that the length modifier for printf and scanf is z, commently used as
>> %zu or %zx (%zd is for ssize_t).
>
> Good idea.
>
> Would you prefer that, or just refer to printf(3) in See also?.

I think it makes sense to spell out %zu and %zx explicitly.

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

