Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36BF3314DF8
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 12:14:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230348AbhBILMM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 06:12:12 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:57830 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229759AbhBILKm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 06:10:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1612868956;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=cGIY4TdT+sgYLWANqzmExRNLm8qx6nsAGdu1u3Gs9Y8=;
        b=TW6D9w4rkbFelXbPbcE1GZeAA3o67Qf4ljEwZb+NdjGPLH8Yfh222ca78q/PhnShtDS+3F
        PgJZ/Ks4XB1x4pMUnZ9QvHZf/th3SH42Gapu08+ggcKRb7Q9zNzfXZUxu55Bw7uMlUl8Ug
        pZcwNYy+fC+qOy5rtcaObdwm6dvDz7c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-5fQT7xMEN3q8Wx9eozKZxw-1; Tue, 09 Feb 2021 06:09:14 -0500
X-MC-Unique: 5fQT7xMEN3q8Wx9eozKZxw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CBAA107ACC7;
        Tue,  9 Feb 2021 11:09:13 +0000 (UTC)
Received: from localhost (unknown [10.33.36.155])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 3660060C04;
        Tue,  9 Feb 2021 11:09:13 +0000 (UTC)
Date:   Tue, 9 Feb 2021 11:09:12 +0000
From:   Jonathan Wakely <jwakely@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Why does stat(2) say <unistd.h> is needed?
Message-ID: <20210209110912.GX3008@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The stat(2) man page says:

SYNOPSIS
        #include <sys/types.h>
        #include <sys/stat.h>
        #include <unistd.h>

        int stat(const char *pathname, struct stat *statbuf);
        int fstat(int fd, struct stat *statbuf);
        int lstat(const char *pathname, struct stat *statbuf);

But I don't see anything there that would require <unistd.h>. POSIX
doesn't require it (and since POSIX.1-2001 no longer requires
<sys/types.h>, saying "Although <sys/types.h> was required for
conforming implementations of previous POSIX specifications, it was
not required for UNIX applications.")

Is the inclusion of <unistd.h> there a mistake?

I've been trying to track down why a libstdc++ header includes
<unistd.h> for no apparent reason, and my best guess is that it's a
result of this man page saying to do it.

