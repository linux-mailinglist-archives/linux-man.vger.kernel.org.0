Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8A91C112319
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2019 08:00:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726599AbfLDHAW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Dec 2019 02:00:22 -0500
Received: from us-smtp-2.mimecast.com ([207.211.31.81]:30514 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725958AbfLDHAW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Dec 2019 02:00:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1575442821;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=qtvnlXg5Nlw0bBEYLf1xYOFVal5gFcIKIiiD7opOAyM=;
        b=GkLOGc0z5haJN0W03SNKuC+Lr3tqmT/AdiuH9Ib2lP+Ym8k8qoSSifZttYNKiBOYfjeWb/
        gAyQ75dEkRSXzkiDJsq5z3aN7PdzL8Nlu7jguudtGY5x7Yh51+MXj65jz5vOZb8rydrKSg
        /ljoLeOA5qNxJobaLQdCE4J2rmpaPE8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-ifvW5NkoOeGgafYnHIdeoQ-1; Wed, 04 Dec 2019 02:00:16 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8C40107ACC9;
        Wed,  4 Dec 2019 07:00:15 +0000 (UTC)
Received: from dcbz.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id CB9BA1001925;
        Wed,  4 Dec 2019 07:00:14 +0000 (UTC)
Date:   Wed, 4 Dec 2019 08:00:12 +0100
From:   Adrian Reber <areber@redhat.com>
To:     Christian Brauner <christian.brauner@ubuntu.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] clone.2: added clone3() set_tid information
Message-ID: <20191204070012.GE34164@dcbz.redhat.com>
References: <20191202142740.59402-1-areber@redhat.com>
 <20191202221452.4obywepdevq5dq2w@wittgenstein>
MIME-Version: 1.0
In-Reply-To: <20191202221452.4obywepdevq5dq2w@wittgenstein>
X-Operating-System: Linux (5.3.12-300.fc31.x86_64)
X-Load-Average: 0.93 0.68 0.39
X-Unexpected: The Spanish Inquisition
X-GnuPG-Key: gpg --recv-keys D3C4906A
Organization: Red Hat
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: ifvW5NkoOeGgafYnHIdeoQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Dec 02, 2019 at 11:14:55PM +0100, Christian Brauner wrote:
> On Mon, Dec 02, 2019 at 03:27:40PM +0100, Adrian Reber wrote:
> > Signed-off-by: Adrian Reber <areber@redhat.com>
>=20
> I'm generally fine with all of this, so:
>=20
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
>=20
> but should this maybe also mention that a pid namespace either already
> needs to have a pid 1 or if it does not the chosen pid has to be set to
> 1. In short:
> "Callers may only choose a pid > 1 in a given pid namespace if an init
> process (i.e. a process with pid 1) already exists. Otherwise the pid
> entry for this pid namespace must be 1."
> or something like this.=20

I like that. I will add this to v3.

=09=09Adrian

