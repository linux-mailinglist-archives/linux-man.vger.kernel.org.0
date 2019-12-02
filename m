Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C93F610EB82
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2019 15:25:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727423AbfLBOZo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Dec 2019 09:25:44 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:32779 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727431AbfLBOZn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Dec 2019 09:25:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1575296743;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HaliGl57wvmSswxOzwoiHCcQSuuxccEhA8BiKfLK3ZE=;
        b=TyLXs2xshXXBro6LIFMXBG/2VGCVfDVSknAr/xJfGWaAdzWcF/ntii+O4XoEQce2P1APX+
        BI92zSo6HWTju3C/tZ2S3Ggr7c8NEVpgqh9OkqLgw7HqLgE+QHM7gAQe2+mb9A43+eoe1T
        4uQl9reENsDrK0sbb3ocusT4q1oPikU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-cEb2SbgWMJOhRLXXiVtQpg-1; Mon, 02 Dec 2019 09:25:40 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7366107AD5E;
        Mon,  2 Dec 2019 14:25:38 +0000 (UTC)
Received: from dcbz.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E906210013A7;
        Mon,  2 Dec 2019 14:25:37 +0000 (UTC)
Date:   Mon, 2 Dec 2019 15:25:35 +0100
From:   Adrian Reber <areber@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Christian Brauner <christian.brauner@ubuntu.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] clone.2: added clone3() set_tid information
Message-ID: <20191202142535.GC34164@dcbz.redhat.com>
References: <20191128124650.364810-1-areber@redhat.com>
 <20191128124650.364810-2-areber@redhat.com>
 <20191128172404.xan6vzaoofjeysq2@wittgenstein>
 <49be41bf-f6e5-c0ea-e6fb-22eeea9656e8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <49be41bf-f6e5-c0ea-e6fb-22eeea9656e8@gmail.com>
X-Operating-System: Linux (5.3.12-300.fc31.x86_64)
X-Load-Average: 0.93 0.68 0.39
X-Unexpected: The Spanish Inquisition
X-GnuPG-Key: gpg --recv-keys D3C4906A
Organization: Red Hat
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: cEb2SbgWMJOhRLXXiVtQpg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Christian and Michael,

thanks for the reviews. I tried to apply all suggested changes in v2
which I will send out in a few minutes.

=09=09Adrian

