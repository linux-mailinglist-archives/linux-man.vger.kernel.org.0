Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA09127830A
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:45:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727201AbgIYIpU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:45:20 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:38561 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727044AbgIYIpU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:45:20 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601023519;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=3en24z5G5jrtLDVtnBMCHlIo0RZJ0odd+doeDw8lhFI=;
        b=CzzNEZsC5vcyKtEFf1kvUBtbLPt8VBr/AqK+FqstOpVMMxBalgLIkjBrUtGMQvsIBUmZUS
        gYkIrobqnN4ZdEl47tZXtI9KgASVlkboQ7hSeu1F5F+oyCt+rLodchC8lE+s/eRbzAHgxS
        YdkSg+1WjStRifNl3u85nqTHkcSL4Kg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-zdGpy2QgOnCq6hb60Tg62w-1; Fri, 25 Sep 2020 04:45:17 -0400
X-MC-Unique: zdGpy2QgOnCq6hb60Tg62w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09E3A81F02F;
        Fri, 25 Sep 2020 08:45:16 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-114-84.ams2.redhat.com [10.36.114.84])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 83D611001901;
        Fri, 25 Sep 2020 08:45:11 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Carlos O'Donell <carlos@redhat.com>
Cc:     linux-man@vger.kernel.org,
        Ludovic =?utf-8?Q?Court=C3=A8s?= <ludo@gnu.org>,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
References: <874knosoyq.fsf@oldenburg2.str.redhat.com>
        <e95f918c-2004-fc3d-044a-d66023e57cd7@redhat.com>
Date:   Fri, 25 Sep 2020 10:45:09 +0200
In-Reply-To: <e95f918c-2004-fc3d-044a-d66023e57cd7@redhat.com> (Carlos
        O'Donell's message of "Wed, 23 Sep 2020 21:30:23 -0400")
Message-ID: <87tuvmfdnu.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Carlos O'Donell:

> May I additionally suggest something like this to the example?

Ah, I had missed the example at the end.  Yes, I'm going to send a v2.

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

