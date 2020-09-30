Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B06427E873
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 14:22:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728296AbgI3MWk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 08:22:40 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:23042 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728294AbgI3MWk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 08:22:40 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601468559;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=inceEXCTEErdjmkMA6NadcOoYXuF8xz15j7JaBBbZN4=;
        b=D/TdqeGeXrC1z6srCvrlw4ohGf2S3fGc0ukc9Sou8bcmAhjiqIDNj+73wjX3j4S+JRGwBR
        e55oG6FOAKiE3hw+TCTRWuP1GOLAUcJja6sEael7ePDK7Fuk0TvhhJwQGotWiKAOZfvxK0
        ty26WsscWPVUDHJ5KLpgB0lOGmGq5ms=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-wlDdDdvKP2eB4t2YfVwBUg-1; Wed, 30 Sep 2020 08:22:35 -0400
X-MC-Unique: wlDdDdvKP2eB4t2YfVwBUg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D61E802B5D;
        Wed, 30 Sep 2020 12:22:34 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-114-84.ams2.redhat.com [10.36.114.84])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 476D21002C01;
        Wed, 30 Sep 2020 12:22:33 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Christoph Kalchreuter <christoph@kalchreuter.de>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Typo in stat(2)
References: <373374d2-851f-67f6-4059-90130aaab344@kalchreuter.de>
Date:   Wed, 30 Sep 2020 14:22:31 +0200
In-Reply-To: <373374d2-851f-67f6-4059-90130aaab344@kalchreuter.de> (Christoph
        Kalchreuter's message of "Wed, 30 Sep 2020 14:07:36 +0200")
Message-ID: <87pn63tpx4.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Christoph Kalchreuter:

> There are three Letters "e" missing in Section "DESCRIPTION",
> Subsection "The stat structure":
>
> struct timespec st_atim;  /* Time of last access */
> struct timespec st_mtim;  /* Time of last modification */
> sruct timespec st_ctim;  /* Time of last status change */
>
> should possibly be:
>
> struct timespec st_atime;  /* Time of last access */
> struct timespec st_mtime;  /* Time of last modification */
> sruct timespec st_ctime;  /* Time of last status change */

This typo is also present in POSIX, so we cannot change it (like the
creat function).

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

