Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C7CF2830A4
	for <lists+linux-man@lfdr.de>; Mon,  5 Oct 2020 09:13:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725873AbgJEHNF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Oct 2020 03:13:05 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:20719 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725870AbgJEHNE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Oct 2020 03:13:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601881983;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=XYEN4WfYh4ng0KabHyaWxTaAG0f9SW5x1827BkH8IYQ=;
        b=Bd0tBtLTnNmQMijHcdQhvufAaDsihIuwAhVRBKjeptr7a0sgOhi5737ING6gZTgU9p2nv+
        LHp4F2Jxd/dhnnI+HaHduQwlDisVDHdaUWXo7blFMfBiqF0UFV90zp+iX2XM4ABNSxPi3r
        v7pXDqw2jXwYoYSdf8rjUrdQ+/P9Fl8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-VJRQK8F4NVeT8mmRZzNtUw-1; Mon, 05 Oct 2020 03:12:59 -0400
X-MC-Unique: VJRQK8F4NVeT8mmRZzNtUw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C67131018F60;
        Mon,  5 Oct 2020 07:12:57 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-11.ams2.redhat.com [10.36.113.11])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 4146060BFA;
        Mon,  5 Oct 2020 07:12:56 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        mtk.manpages@gmail.com
Subject: Re: [PATCH 1/4] system_data_types.7: Add '__int128'
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
        <20201001163443.106933-2-colomar.6.4.3@gmail.com>
        <87eemg97ew.fsf@oldenburg2.str.redhat.com>
        <f08ea5cf-d4ae-54aa-405b-829909156186@cs.ucla.edu>
        <bcce5f89-6682-e089-d129-43c36fe3f392@gmail.com>
        <daa5c152-0462-19d2-d327-0042f405a40c@cs.ucla.edu>
Date:   Mon, 05 Oct 2020 09:12:54 +0200
In-Reply-To: <daa5c152-0462-19d2-d327-0042f405a40c@cs.ucla.edu> (Paul Eggert's
        message of "Fri, 2 Oct 2020 12:54:13 -0700")
Message-ID: <87y2kl403t.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Paul Eggert:

> On 10/2/20 12:01 PM, Alejandro Colomar wrote:
>> If you propose not to document the stdint types either,
>
> This is not a stdint.h issue. __int128 is not in stdint.h and is not a
> system data type in any real sense; it's purely a compiler
> issue. Besides, do we start repeating the GCC manual too, while we're
> at it? At some point we need to restrain ourselves and stay within the
> scope of the man pages.

The manual pages also duplicate the glibc manual, and as far as I know,
it's what programmers actually read.  (Downstream, we receive many more
man-pages bugs than glibc or GCC manual bugs.)  Most developers use
distributions which do not ship the glibc or GCC manual for licensing
policy reasons, so the GNU manuals are not installed locally.

> PS. Have you ever tried to use __int128 in real code? I have, to my
> regret. It's a portability and bug minefield and should not be used
> unless you really know what you're doing, which most people do not.

Doesn't this suggest we need improved documentation?

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

