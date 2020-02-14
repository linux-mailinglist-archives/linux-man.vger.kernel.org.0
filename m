Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 296CE15DAF2
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 16:29:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387445AbgBNP2s convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 14 Feb 2020 10:28:48 -0500
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:21029 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S2387398AbgBNP2s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 10:28:48 -0500
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-WiHMo-qlMc2sQaHTrLwUIA-1; Fri, 14 Feb 2020 10:28:44 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EFD1106BC3C;
        Fri, 14 Feb 2020 15:28:43 +0000 (UTC)
Received: from asgard.redhat.com (ovpn-112-64.ams2.redhat.com [10.36.112.64])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CCD919C6A;
        Fri, 14 Feb 2020 15:28:41 +0000 (UTC)
Date:   Fri, 14 Feb 2020 16:28:38 +0100
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] Some stftime.3 and nl_langinfo.3 updates
Message-ID: <cover.1581693624.git.evgsyr@gmail.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: WiHMo-qlMc2sQaHTrLwUIA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: 8BIT
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello.

There are some additions that cross-link these two pages and aim to make
the behaviour of a libc more clear with respect to locale-dependent
conversion specifications.  It is based on POSIX[1], GNU C Library
documentation[2], and glibc's implementation[3], with some
cross-checking of uClibc, musl, and FreeBSD implementations.

[1] https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap07.html
[2] https://www.gnu.org/software/libc/manual/html_node/The-Elegant-and-Fast-Way.html
[3] https://sourceware.org/git/?p=glibc.git;a=blob;f=time/strftime_l.c

Eugene Syromyatnikov (7):
  nl_langinfo.3: mention the respective strftime conversion
    specifications
  nl_langinfo.3: add information about AM/PM time format locale elements
  nl_langinfo.3: document era-related locale elements
  strftime.3: ffix
  strftime.3: consistently document fall-back format string
  strftime.3: refer to the relevant nl_langinfo items
  strftime.3: expand %E and %O description

 man3/nl_langinfo.3 | 135 +++++++++++++++++++++++++++++++++++++++++++++++++++--
 man3/strftime.3    | 106 ++++++++++++++++++++++++++++++++++++++---
 2 files changed, 232 insertions(+), 9 deletions(-)

-- 
2.1.4

