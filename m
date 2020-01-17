Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90987140954
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2020 12:57:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726892AbgAQL5Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jan 2020 06:57:24 -0500
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:48114 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726785AbgAQL5X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jan 2020 06:57:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1579262242;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=aEwealRBtIw9xUaG2+RX3j03LPsjJroyfHVtSVub2iw=;
        b=esecw//XZrNnS22nFr2tdXDCoAdiVQCsErNV2FhtWyAs415cuAfPLwo89w1Jq62UijZAwj
        iACwqDlQ+LYM1uOr6zojsyScThQxtvnH5yH5fYJw8ho9e1sU0vnW8Y6kemPRlACUEHVThl
        f8uYAniISCozImTx7cOIDNY5XcDXjH4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-3s-HEUFDN7e_V2QpxvxVxA-1; Fri, 17 Jan 2020 06:57:17 -0500
X-MC-Unique: 3s-HEUFDN7e_V2QpxvxVxA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09F81800D50;
        Fri, 17 Jan 2020 11:57:16 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-227.str.redhat.com [10.33.192.227])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F99460C63;
        Fri, 17 Jan 2020 11:57:15 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Shawn Landden <shawn@git.icu>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] bcmp: note that this function is no longer legacy due to LLVM 9
In-Reply-To: <20200111145544.5592-1-shawn@git.icu> (Shawn Landden's message of
        "Sat, 11 Jan 2020 18:55:44 +0400")
References: <20200111145544.5592-1-shawn@git.icu>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
Date:   Fri, 17 Jan 2020 12:57:14 +0100
Message-ID: <87o8v2pa79.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Shawn Landden:

> +This function was deprecated (marked as LEGACY) by POSIX.1-2001).
>  POSIX.1-2008 removes the specification of
>  .BR bcmp ().
> +LLVM 9, released in 2019, revived
> +.BR bcmp ()
> +and generates calls to it instead of
> +.BR memcmp (3)
> +as appropiate as an optimization (as
> +.BR bcmp ()
> +need not traverse memory in-order).
> +.\" http://releases.llvm.org/9.0.0/docs/ReleaseNotes.html#noteworthy-optimizations

This is a pessimation on GNU/Linux if the program uses memcmp as well
because it introduces another relocation.

Thanks,
Florian

