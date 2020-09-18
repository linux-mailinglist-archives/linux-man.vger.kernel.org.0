Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F915270850
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:32:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgIRVck (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:32:40 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:21175 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726139AbgIRVck (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:32:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600464759;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=ElkO9GlfVJyfFJjNY90v6whFjzuQEuhuYZIPa17EyGc=;
        b=PfimjVZ5LtcqVzRmbjKs0bAMu+pZqhECdvEcKCh4GMPEhwTyr+Q/UnKHB+WbDI5LkXRuuK
        +jbFCnqaoh9ag/cDjUnEYdbTuJ/ocVpp6sLgRSZhsL13wpHgSH9QDF62/kzun4ASsOn4pM
        PrbMm0pYmepSnxGrTBaK6ATU5BZBlNA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-1ewHTUKyO5mRbN38AmVfWA-1; Fri, 18 Sep 2020 17:32:37 -0400
X-MC-Unique: 1ewHTUKyO5mRbN38AmVfWA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C88F18B9F91;
        Fri, 18 Sep 2020 21:32:36 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-177.ams2.redhat.com [10.36.113.177])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 66C4C78803;
        Fri, 18 Sep 2020 21:32:35 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: [PATCH 0/2] Document size_t
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
        <c357dd2a-71b0-4f23-55e6-fbde975ae5ee@gmail.com>
        <16920ef9-1b0d-b582-b87e-fe915522ccd1@gmail.com>
Date:   Fri, 18 Sep 2020 23:32:33 +0200
In-Reply-To: <16920ef9-1b0d-b582-b87e-fe915522ccd1@gmail.com> (Alejandro
        Colomar's message of "Fri, 18 Sep 2020 23:28:09 +0200")
Message-ID: <87o8m2ydn2.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

>>> In the See also, I just put a few important pages.
>>> Maybe you want to include a few more.
>> I added read(2) and write(2).
>
> Fine.  I didn't remember their arguments are 'size_t'.  I was under
> the idea that they used 'ssize_t'.

The outliers are readv and writev, which use int for the array length
argument (at least in POSIX).

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

