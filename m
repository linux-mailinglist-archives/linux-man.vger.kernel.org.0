Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21F6D280F10
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 10:38:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726274AbgJBIiR convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 2 Oct 2020 04:38:17 -0400
Received: from mail-relay152.hrz.tu-darmstadt.de ([130.83.252.152]:41787 "EHLO
        mail-relay152.hrz.tu-darmstadt.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725961AbgJBIiR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 04:38:17 -0400
X-Greylist: delayed 580 seconds by postgrey-1.27 at vger.kernel.org; Fri, 02 Oct 2020 04:38:17 EDT
Received: from Bounce.nt.e-technik.tu-darmstadt.de (Bounce.nt.e-technik.tu-darmstadt.de [130.83.228.113])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mail-relay152.hrz.tu-darmstadt.de (Postfix) with ESMTPS id 4C2jnH2M8xz4417;
        Fri,  2 Oct 2020 10:28:35 +0200 (CEST)
Received: from [172.16.8.33] (55d4497a.access.ecotel.net [85.212.73.122])
        (authenticated bits=0)
        by Bounce.nt.e-technik.tu-darmstadt.de (8.15.2/8.15.2) with ESMTPSA id 0928SX8i001162
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
        Fri, 2 Oct 2020 10:28:34 +0200 (CEST)
Date:   Fri, 2 Oct 2020 10:30:27 +0200
From:   Hauke Fath <hf@spg.tu-darmstadt.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Hauke Fath <hf@spg.tu-darmstadt.de>
Message-ID: <20201002103027636420.e5d6e3ba@spg.tu-darmstadt.de>
Subject: strsignal(3) mentions sys_siglist, which is gone
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT
Organization: TU Darmstadt
X-Mailer: GyazMail version 1.6.3
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

strsignal(3) <https://man7.org/linux/man-pages/man3/strsignal.3.html> 
mentions sys_siglist[], which according to 
<https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=b1ccfc061feee9ce616444ded8e1cd5acf9fa97f> 
has been removed from glibc.

Noted in Arch Linux, see 
<https://lists.archlinux.org/pipermail/arch-general/2020-October/048173.html>.

Cheerio,
Hauke Fath

-- 
     The ASCII Ribbon Campaign                    Hauke Fath
()     No HTML/RTF in email            Institut für Nachrichtentechnik
/\     No Word docs in email                     TU Darmstadt
     Respect for open standards              Ruf +49-6151-16-21344
