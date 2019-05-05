Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C89813EF1
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 12:53:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727034AbfEEKxc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 May 2019 06:53:32 -0400
Received: from mx1.redhat.com ([209.132.183.28]:47620 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726397AbfEEKxc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 5 May 2019 06:53:32 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 80AC0811A9;
        Sun,  5 May 2019 10:53:32 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-116-52.ams2.redhat.com [10.36.116.52])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A49611FDE1;
        Sun,  5 May 2019 10:53:31 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] tsearch.3: Document twalk_r function added in glibc 2.30
References: <87a7g3ua55.fsf@oldenburg2.str.redhat.com>
        <c2f118de-990e-96d3-e555-9eaa9ab8a885@gmail.com>
Date:   Sun, 05 May 2019 12:53:29 +0200
In-Reply-To: <c2f118de-990e-96d3-e555-9eaa9ab8a885@gmail.com> (Michael
        Kerrisk's message of "Sat, 4 May 2019 17:55:45 -0500")
Message-ID: <87a7g1i34m.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Sun, 05 May 2019 10:53:32 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk:

> Why is the 'level' argument deemed unnecessary for twalk_r()?
> Is it worth adding some text to say why that argument is dropped?

It's possible to implement it by tracking the recursion depth using the
closure object, if this information is indeed required.  The glibc
manual and test suite contain example code which shows how to do this.

Thanks,
Florian
