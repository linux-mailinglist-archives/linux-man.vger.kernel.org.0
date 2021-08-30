Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A16F93FB3F6
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 12:39:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236288AbhH3Kjw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 06:39:52 -0400
Received: from mail.kernel.org ([198.145.29.99]:40026 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236269AbhH3Kjw (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 30 Aug 2021 06:39:52 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B695610CC;
        Mon, 30 Aug 2021 10:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630319938;
        bh=I+4eZrEOZGURUCVCncd4bZbW3ZpyMc9JSP7v6Rc7Pxs=;
        h=Date:From:To:Subject:From;
        b=HqR639eRqup1V9xkRFKrPfr5bKKzRtl/QxooSZJb1+3jAf2nAHV6unLsV1x6Oa7s8
         le61bMjF8jBLMGQnM8dkqceDnnxbpK6VGos0Is3P1pJ5opj8KTmzWc2BJbKBLesrMB
         BTgXbylxUj/CMjGvnxpr+PBGSR2NYMkznRRiQk/fu8CgkvHkfS+GKMfxv8wiO3UH0l
         OUZOzUehWg4UOZeVsrRnyy35xQvBGgUTG6uYUc0L47KKSeWPAlnuJWCOV9VPab+1sz
         6eFSIN7Gj4r/eh1iAT0CeWoEzwj2cSIhUKk3N3mEm3aczgRw9xXJGm1eAXn9qNzVv0
         PIHsjb41DBbdw==
Received: by pali.im (Postfix)
        id 1DDB57B8; Mon, 30 Aug 2021 12:38:56 +0200 (CEST)
Date:   Mon, 30 Aug 2021 12:38:55 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: cfsetispeed and zero baudrate
Message-ID: <20210830103855.kv2ykg34m3eorrel@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alejandro!

Currently in cfsetispeed() documentation is written:

  If the input baud rate is set to zero, the input baud rate will be
  equal to the output baud rate.

There is B0 constant which represents "zero baud rate". And also
information that argument for cfsetispeed() (and also cfsetospeed())
must be Bnnn constant.

But above quote documents special handling, "zero" here is really
integer 0 and not pre-defined constant B0.

I think that phrase "If the input baud rate is set to zero" could be
confusing, as based on requirement to use Bnnn constants somebody could
interpret that "zero" as B0.

What do you think, should be above documentation part extended to
express that "zero" is really integer 0 and not constant B0?

Some references:
* glibc really checks for integer 0:
  https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/speed.c;h=daac5ecde1f3695b8cb178002e8756895406087b;hb=HEAD#l86
* POSIX describes that it is integer 0:
  https://pubs.opengroup.org/onlinepubs/9699919799/functions/tcsetattr.html
