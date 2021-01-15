Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 004972F7FAE
	for <lists+linux-man@lfdr.de>; Fri, 15 Jan 2021 16:36:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731111AbhAOPfo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Jan 2021 10:35:44 -0500
Received: from mx2.suse.de ([195.135.220.15]:60080 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729384AbhAOPfo (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 15 Jan 2021 10:35:44 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id C98FCAC24;
        Fri, 15 Jan 2021 15:35:02 +0000 (UTC)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   Martin Doucha <mdoucha@suse.cz>
Subject: semctl(2): data type for SEM_STAT_ANY
Message-ID: <14010457-560b-5c2f-d840-782be5f0aeb8@suse.cz>
Date:   Fri, 15 Jan 2021 16:35:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,
there's a minor error in the semctl(2) man page, the correct data type
for SEM_STAT_ANY return buffer is "struct semid_ds" because the kernel
code path is the same as for IPC_STAT and SEM_STAT:

https://github.com/torvalds/linux/blob/5ee88057889bbca5f5bb96031b62b3756b33e164/ipc/sem.c#L1789

The man page currently says that the data type for IPC_STAT and SEM_STAT
is "struct semid_ds" (correct) but then it says the data type for
SEM_STAT_ANY is "struct seminfo" (wrong).

https://man7.org/linux/man-pages/man2/semctl.2.html

-- 
Martin Doucha   mdoucha@suse.cz
QA Engineer for Software Maintenance
SUSE LINUX, s.r.o.
CORSO IIa
Krizikova 148/34
186 00 Prague 8
Czech Republic
