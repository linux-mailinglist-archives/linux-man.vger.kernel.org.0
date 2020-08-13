Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FD46243D30
	for <lists+linux-man@lfdr.de>; Thu, 13 Aug 2020 18:24:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726192AbgHMQYq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Aug 2020 12:24:46 -0400
Received: from brightrain.aerifal.cx ([216.12.86.13]:42618 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726131AbgHMQYp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Aug 2020 12:24:45 -0400
Date:   Thu, 13 Aug 2020 12:24:43 -0400
From:   Rich Felker <dalias@libc.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: seccomp(2) example still uses SECCOMP_RET_KILL
Message-ID: <20200813162440.GA16696@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I noticed while reading seccomp(2) today that the example code still
uses SECCOMP_RET_KILL. This is unsafe in a multithreaded process and
should be considered deprecated -- having a thread asynchronously
cease to exist inherently leaves the process in a permanently
inconsistent and possibly corrupt state.

The example should be updated to use SECCOMP_RET_KILL_PROCESS and a
note that SECCOMP_RET_KILL[_THREAD] is unsafe and deprecated should
probably be added as well.

Rich
