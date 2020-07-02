Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B8EF21202C
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 11:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727057AbgGBJlq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 05:41:46 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:44886 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725287AbgGBJlq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 05:41:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1593682904;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=otHkOaIeH581GEjy8u2mxjoQIJ9VnLDjphgnTEOC07k=;
        b=Scfqkb+lo1dwAIrAnoaR3H6X46G2LEM7YRpC75IQ8cwn97+t0hXGlWB7/Q1EZOuY+16gjM
        Xb92PzaWv+3/L6Fh3Mo56mnWRYLKR6TVZH8EE+jFBaSdSHaWqoOfhx+iq44UUZj+3CdkDY
        iaHlUT8fYTUn/8Wntn+icSszS+Qy5Hs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-LtaEbmigPPOIpO_QQDYP5g-1; Thu, 02 Jul 2020 05:41:40 -0400
X-MC-Unique: LtaEbmigPPOIpO_QQDYP5g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7EA1107ACCA;
        Thu,  2 Jul 2020 09:41:38 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-162.ams2.redhat.com [10.36.112.162])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E7C073FDE;
        Thu,  2 Jul 2020 09:41:37 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Aleksa Sarai <cyphar@cyphar.com>
Cc:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        pgajdos <pgajdos@suse.cz>, eppers@posteo.de,
        linux-man <linux-man@vger.kernel.org>, libc-alpha@sourceware.org
Subject: Re: openat2.h location (openat2.2)
References: <20200630141703.GB12757@laura.suse.cz>
        <CAKgNAki+Zh-D_eYLsF_yryYF+BStLdUj=ROWKO2MRb+Yvp4PHA@mail.gmail.com>
        <20200630223348.rrr23sfuh7p46top@yavin.dot.cyphar.com>
Date:   Thu, 02 Jul 2020 11:41:35 +0200
In-Reply-To: <20200630223348.rrr23sfuh7p46top@yavin.dot.cyphar.com> (Aleksa
        Sarai's message of "Wed, 1 Jul 2020 08:33:48 +1000")
Message-ID: <878sg2dzjk.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Aleksa Sarai:

> On 2020-06-30, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
>> [CC += Aleksa, linux-man@]
>> 
>> Hello Petr,
>> 
>> I'm bringing Aleksa, the creator of the system call, into CC.
>> 
>> Aleksa, the issue is that the header file (<openat2.h>) documented in
>> the manual page that you sent does not (yet) exist (and the bug
>> reporter therefore suggests that the manual page should say to include
>> <linux/openat2.h>.
>> 
>> I'm guessing that there is (or was) a plan to add a <openat2.h> header
>> file to glibc. What is the status?
>
> Yes, Florian asked me to put the openat2 definitions into a separate
> header (openat2.h) so that it could be just copied by glibc rather than
> having to do any more hacks around <fcntl.h>.

We still need to document the original *at functions. 8-( That's a
precondition for adding openat2 (which should come with its own
documentation right from the start).

<https://sourceware.org/pipermail/libc-alpha/2020-May/113545.html>

> I guess those plans haven't come to fruition yet? I'm fine with telling
> users to use <linux/openat2.h> in the meantime.

If we include <linux/openat2.h> from the glibc header, the transition
should be unproblematic because there won't be any multi-definition
errors.

Thanks,
Florian

