Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A4C8114AF1
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 15:31:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725852AbfEFNbq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 09:31:46 -0400
Received: from 3.mo68.mail-out.ovh.net ([46.105.58.60]:38752 "EHLO
        3.mo68.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725813AbfEFNbq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 09:31:46 -0400
Received: from player786.ha.ovh.net (unknown [10.109.143.208])
        by mo68.mail-out.ovh.net (Postfix) with ESMTP id 6D54D1247EC
        for <linux-man@vger.kernel.org>; Mon,  6 May 2019 15:31:44 +0200 (CEST)
Received: from jwilk.net (ip-5-172-255-51.free.aero2.net.pl [5.172.255.51])
        (Authenticated sender: jwilk@jwilk.net)
        by player786.ha.ovh.net (Postfix) with ESMTPSA id 4D58858D29DE;
        Mon,  6 May 2019 13:31:41 +0000 (UTC)
Date:   Mon, 6 May 2019 15:31:39 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Shawn Landden <shawn@git.icu>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] read/write: documentation of limits v3
Message-ID: <20190506133139.3hvur2xwdqqx6ror@jwilk.net>
References: <20190506054107.25321-1-shawn@git.icu>
 <20190506130637.26455-1-shawn@git.icu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ji57uurcnrhhmqmz"
Content-Disposition: inline
In-Reply-To: <20190506130637.26455-1-shawn@git.icu>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 3981182073722558324
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -85
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrjeejgdeikecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenfghrlhcuvffnffculdduhedm
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ji57uurcnrhhmqmz
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

* Shawn Landden <shawn@git.icu>, 2019-05-06, 08:06:
>--- a/man2/write.2
>+++ b/man2/write.2
>@@ -190,10 +190,18 @@ flag, and either the address specified in
> .IR buf ,
> the value specified in
> .IR count ,
> or the file offset is not suitably aligned.
> .TP
>+.B EINVAL
>+.\" MAX_RW_COUNT in include/linux/fs.h
>+The write amount is greater than
>+.B MAX_RW_COUNT,
>+which is
>+.B INT_MAX
>+rounded down to the page size (INT_MAX & ~PAGE_MASK).
>+.TP

I can't reproduce this. For me, write() behaves as it is documented in 
another part of this man page:

"On Linux, write() (and similar system calls) will transfer at most 
0x7ffff000 (2,147,479,552) bytes, returning the number of bytes actually 
transferred. (This is true on both 32-bit and 64-bit systems.)"

I've attached the program that I used for testing.

-- 
Jakub Wilk

--ji57uurcnrhhmqmz
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="test-write.c"

#include <fcntl.h>
#include <limits.h>
#include <stddef.h>
#include <stdio.h>
#include <sys/mman.h>
#include <unistd.h>

int main(int argc, char **argv)
{
	int fd = open("/dev/zero", O_RDWR);
	if (fd < 0) {
		perror("/dev/zero");
		return 1;
	}
	void *mem = mmap(NULL, INT_MAX, PROT_READ, MAP_PRIVATE, fd, 0);
	if (mem == MAP_FAILED) {
		perror("mmap()");
		return 1;
	}
	int rc = write(fd, mem, INT_MAX);
	if (rc < 0) {
		perror("write()");
		return 1;
	}
	printf("0x%x bytes written\n", rc);
}

--ji57uurcnrhhmqmz--
