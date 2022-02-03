Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25F9C4A83D3
	for <lists+linux-man@lfdr.de>; Thu,  3 Feb 2022 13:27:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350527AbiBCM1x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Feb 2022 07:27:53 -0500
Received: from smtp26.services.sfr.fr ([93.17.128.11]:5807 "EHLO
        smtp26.services.sfr.fr" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350513AbiBCM1v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Feb 2022 07:27:51 -0500
X-mail-filterd: {"version":"1.3.4","queueID":"4JqHxW1cwlz1LQQkw","contextId":"4372d300-b640-4666-8f83-22498e940a2a"}
Received: from [192.168.0.22] (89-159-197-249.rev.numericable.fr [89.159.197.249])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by msfrf2614.sfr.fr (SMTP Server) with ESMTPS id 4JqHxW1cwlz1LQQkw;
        Thu,  3 Feb 2022 13:27:43 +0100 (CET)
X-mail-filterd: {"version":"1.3.4","queueID":"4JqHxW0pc7z1LQKcv","contextId":"fe8adfb1-e451-42af-8167-90dce7146da4"}
X-sfr-mailing: LEGIT
X-sfr-spamrating: 40
X-sfr-spam: not-spam
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=waika9.com; s=202006;
 t=1643891263; h=Date:To:Cc:From:Subject; bh=/qVXX+D1+YHBAqa1vA951iIFFKxsthiW6
  VuoqzNC4kk=; b=H7cdEtcFHQ1xpvxqjTsLsetTz/YuRKkjUrstzvRt4QJkU3qlulq1I243SAI7A
  w3/77I6NfsyFsyyc4Nk7qnyvLfdeaTyqAtKjU8+6HM5qETLnx8SoC/ktd1IBrk8XT3ABC5IBHudr
  eQuHi2VSimMgPDR0UIhVdHizgIzCjQa5R3ez45V5+x3Kih2IOtwXr/wfSi3NR6F8kCioMDjZ1901
  WPtMR7EjSUm22Q1cnYlVui7Au/mpMd7IBDPyvZwxQ8SM3TUAIpfmuAg6gh1VF8JfxcJQVgBl+3vz
  bWuhIdMzWnKpWHxHjDfc8PVgtH7YCjdD2WXad0oRhwb9wqnBtwlJQ==
Received: from [192.168.0.22] (89-159-197-249.rev.numericable.fr [89.159.197.249])
        by msfrf2614.sfr.fr (SMTP Server) with ESMTP id 4JqHxW0pc7z1LQKcv;
        Thu,  3 Feb 2022 13:27:43 +0100 (CET)
Received: from [192.168.0.22] (89-159-197-249.rev.numericable.fr [89.159.197.249])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: lucien.gentis@waika9.com)
        by msfrf2614.sfr.fr (SMTP Server) with ESMTPSA;
        Thu,  3 Feb 2022 13:27:42 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (PLAIN) smtp.auth=lucien.gentis@waika9.com
Message-ID: <13b895bd-7dca-1d14-2703-0fb5e90381fe@waika9.com>
Date:   Thu, 3 Feb 2022 13:27:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: fr
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   Lucien Gentis <lucien.gentis@waika9.com>
Subject: fmemopen manpage (3)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

In that phrase:

"If  buf is not NULL, then it should point to a buffer of at least len 
bytes allocated by the caller."

Should'nt it be "of at least size bytes" instead of "of at least len 
bytes" ? (where size is the second argument of fmemopen)

If not, what does "len" mean ?

Best regards

Lucien Gentis

