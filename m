Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0C09314E7B
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 12:57:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbhBIL5D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 06:57:03 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:28970 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229743AbhBILzy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 06:55:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1612871619;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HaBixZSCGlwnMlhanlj5i2rdbpYKS01VGHEpbDn2fsY=;
        b=Xgcdxqs4ZEEzdYsgOJ0vF5gy0V3yD5r3/FI5PmvHl8jkozz09Mz2HxvqaCeUcoE554isTE
        qDo615hZ6vEBM96sPDZhFuP2j/aR7pj+pgnsOy4QIpCjPR2sTIs2H1gitS83/bKuZtUB7L
        fO4se0L4uSr29rWGZd7mRY718L+5BXo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-xUSbMu8KPSCuRjDgByLuGw-1; Tue, 09 Feb 2021 06:53:37 -0500
X-MC-Unique: xUSbMu8KPSCuRjDgByLuGw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 825C7193411C;
        Tue,  9 Feb 2021 11:53:36 +0000 (UTC)
Received: from localhost (unknown [10.33.36.155])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 1EE9F19CAC;
        Tue,  9 Feb 2021 11:53:35 +0000 (UTC)
Date:   Tue, 9 Feb 2021 11:53:35 +0000
From:   Jonathan Wakely <jwakely@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: Why does stat(2) say <unistd.h> is needed?
Message-ID: <20210209115335.GB3008@redhat.com>
References: <20210209110912.GX3008@redhat.com>
 <6d13f96f-d42b-7748-21f2-da5e7c88345d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6d13f96f-d42b-7748-21f2-da5e7c88345d@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5vNYLRcllDrimb99
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On 09/02/21 12:27 +0100, Alejandro Colomar (man-pages) wrote:
>Hello Jonathan,
>
>On 2/9/21 12:09 PM, Jonathan Wakely wrote:
>>The stat(2) man page says:
>>
>>SYNOPSIS
>>        #include <sys/types.h>
>>        #include <sys/stat.h>
>>        #include <unistd.h>
>>
>>        int stat(const char *pathname, struct stat *statbuf);
>>        int fstat(int fd, struct stat *statbuf);
>>        int lstat(const char *pathname, struct stat *statbuf);
>>
>>But I don't see anything there that would require <unistd.h>. POSIX
>>doesn't require it (and since POSIX.1-2001 no longer requires
>><sys/types.h>, saying "Although <sys/types.h> was required for
>>conforming implementations of previous POSIX specifications, it was
>>not required for UNIX applications.")
>>
>>Is the inclusion of <unistd.h> there a mistake?
>>
>>I've been trying to track down why a libstdc++ header includes
>><unistd.h> for no apparent reason, and my best guess is that it's a
>>result of this man page saying to do it.
>>
>As far as we can tell, there's no reason to include it.  See <https://lore.kernel.org/linux-man/97457bf2-2b29-af4b-c910-2391c69c4134@gmail.com/>.
>
>We haven't fixed it yet, because I'd like to fix all of the pages, and 
>that's likely to take months (reading through every manual page in 
>senctions 2 & 3, reading thorugh every included header, checking POSIX 
>requirements, asking Michael if there may be historical reasons for a 
>specific case, ...), but I'll do it some day.
>
>For now, if you submit a patch, I'll merge it.

Attached, thanks.



--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-stat.2-Remove-unistd.h-from-synopsis.patch"

From d5b66a6b83302bd4070e3c83fb1dab341b76b728 Mon Sep 17 00:00:00 2001
From: Jonathan Wakely <jwakely@redhat.com>
Date: Tue, 9 Feb 2021 11:46:02 +0000
Subject: [PATCH] stat.2: Remove <unistd.h> from synopsis

There seems to be no reason <unistd.h> is shown here, so remove it.

Signed-off-by: Jonathan Wakely <jwakely@redhat.com>
---
 man2/stat.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/stat.2 b/man2/stat.2
index 734c74b04..fed926715 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -43,7 +43,6 @@ stat, fstat, lstat, fstatat \- get file status
 .nf
 .B #include <sys/types.h>
 .B #include <sys/stat.h>
-.B #include <unistd.h>
 .PP
 .BI "int stat(const char *" pathname ", struct stat *" statbuf );
 .BI "int fstat(int " fd ", struct stat *" statbuf );
-- 
2.29.2


--5vNYLRcllDrimb99--

