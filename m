Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA6026FFFC
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 16:34:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726199AbgIROew (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 10:34:52 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:35393 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726126AbgIROew (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 10:34:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600439691;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=f+22eWkQ7UXiGym1OM1h4PW1y0VNEupn2gv6ISReeSA=;
        b=Pp+aim+2/c8tVhaNRdHbnPtV455VwbRZl6lhtmCMgrVyQwFkgo61efcbMZ1BZaAndo1f8p
        0lnbZmhO4ccjSLHpB1xIgtYAvz/gRyHjL/CfYVa8rrzWPULJUguliKCaFgZ+eCxjgVeWFY
        /s892mJXXdzvjK+vkfyYZb6tYmaLCd8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-GDtGRnnAP7yEMOfccA2FBg-1; Fri, 18 Sep 2020 10:34:46 -0400
X-MC-Unique: GDtGRnnAP7yEMOfccA2FBg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0222ADC03;
        Fri, 18 Sep 2020 14:34:45 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-177.ams2.redhat.com [10.36.113.177])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id B19F275261;
        Fri, 18 Sep 2020 14:34:44 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
        <20200918112755.21428-2-colomar.6.4.3@gmail.com>
Date:   Fri, 18 Sep 2020 16:34:43 +0200
In-Reply-To: <20200918112755.21428-2-colomar.6.4.3@gmail.com> (Alejandro
        Colomar via Libc-alpha's message of "Fri, 18 Sep 2020 13:27:55 +0200")
Message-ID: <87tuvv5f24.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar via Libc-alpha:

> +Used for a count of bytes.  It is the result of the
> +.I sizeof
> +operator.
> +According to the C language standard,
> +it shall be an unsigned integer type
> +capable of storing values in the range [0,
> +.BR SIZE_MAX ].

Thanks for working on this.

Maybe add that this commonly maps to unsigned int or unsigned long, and
that the length modifier for printf and scanf is z, commently used as
%zu or %zx (%zd is for ssize_t).

Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

