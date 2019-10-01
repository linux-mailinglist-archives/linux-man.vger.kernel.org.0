Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9892BC36E5
	for <lists+linux-man@lfdr.de>; Tue,  1 Oct 2019 16:18:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727096AbfJAOS1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Oct 2019 10:18:27 -0400
Received: from gateway20.websitewelcome.com ([192.185.53.25]:46151 "EHLO
        gateway20.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727055AbfJAOS1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Oct 2019 10:18:27 -0400
X-Greylist: delayed 1484 seconds by postgrey-1.27 at vger.kernel.org; Tue, 01 Oct 2019 10:18:26 EDT
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
        by gateway20.websitewelcome.com (Postfix) with ESMTP id 45024400E0C85
        for <linux-man@vger.kernel.org>; Tue,  1 Oct 2019 07:42:00 -0500 (CDT)
Received: from gator3203.hostgator.com ([198.57.247.167])
        by cmsmtp with SMTP
        id FIWCi0ZXRW4frFIWCihBWK; Tue, 01 Oct 2019 08:48:45 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=rsiny.com;
         s=default; h=Content-Transfer-Encoding:MIME-Version:Content-Type:In-Reply-To
        :References:Date:Cc:To:Reply-To:From:Subject:Message-ID:Sender:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=94OjpxB6wYV2KSEFYN23K7u40e+9po5XbaY5phkXX0A=; b=F6rdpJQF7uJiUj6kcDcJ7Lr3gF
        qqDesp6JpsiiHQKTRkkUxmDQqhTXLuL6LfNoBPmUelETPFR1y/K4ItyfxP/tEiulTUMMbe1PU2o/T
        P9wjZ6Ya6FUprZfWCS7RdeNeVX6eHBSGB/TPW4+WhluFW1qpqoLT9gQZOvIhccX0zsPljvAnXqGU8
        e5nuTtiaYFelsCCOiNjFOz0+XalHL0oeB8hZJ2n/xTNLl01g6zAEqmCzmzyjkGb7YHbCOW4ZBo7f1
        B3haNuBwJljyLUeOkZyPl6nluDcA6hBXcTQXJD9kc1DP/0zZkAW4RNvUXeGAGYCp958W2vR+QkuZi
        MkaHGTcA==;
Received: from pool-100-37-189-229.nycmny.fios.verizon.net ([100.37.189.229]:59024 helo=[192.168.1.4])
        by gator3203.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.92)
        (envelope-from <rstanley@rsiny.com>)
        id 1iFIWB-000zeX-PZ; Tue, 01 Oct 2019 08:48:43 -0500
Message-ID: <b213bfc24fa025f4981655b00ea6824035858952.camel@rsiny.com>
Subject: proposed patch to operator manpage
From:   Rick Stanley <rstanley@rsiny.com>
Reply-To: rstanley@rsiny.com
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Rick Stanley <rstanley@rsiny.com>
Date:   Tue, 01 Oct 2019 09:48:42 -0400
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
         <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
         <a872f7e970a7d2048243f21b9fb40ad5fa929ffe.camel@rsiny.com>
         <65c8c525eb718aa77816f3fe0b47e33d3504e623.camel@rsiny.com>
         <3cdbcb38-734a-2b1e-ba12-f5e85a89b805@gmail.com>
In-Reply-To: <3cdbcb38-734a-2b1e-ba12-f5e85a89b805@gmail.com>
Organization: RSI
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3203.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - rsiny.com
X-BWhitelist: no
X-Source-IP: 100.37.189.229
X-Source-L: No
X-Exim-ID: 1iFIWB-000zeX-PZ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: pool-100-37-189-229.nycmny.fios.verizon.net ([192.168.1.4]) [100.37.189.229]:59024
X-Source-Auth: rstanley@rsiny.com
X-Email-Count: 1
X-Source-Cap: cnN0YW5sZXk7cnN0YW5sZXk7Z2F0b3IzMjAzLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael:

I have created a patch to update the current version of the operator
table, as we have discussed.

The current table is the K&R, 1st edition, and has not been updated in
30 years.

Three updates are proposed, The first you have already added to the
source. Numbers are the Sections within the C Standard changed.

In C89/90 C Standard, the postfix, increment( ++ ) and decrement( -- )
operators, have been promoted to level 1, (Section: 6.3.2) leaving the
prefix versions in the unary operators, on  Level 2 (Section: 6.3.3).

In C89/90 C Standard, the cast operator( (type) ), has been demoted to
a new third level, (Section: 6.3.4) inserted between the unary
operators, (Section: 6.3.3) and the multiplicative operators, (Section:
6.3.5) expanding the table to 16 levels.

In C11 C Standard, a new unary operator, _Alignof has been added to the
unary operators (Section: 6.5.3).

I have made the additional changes along with the update you have
already made.  The proposed patch is shown below:

diff --git a/man7/operator.7 b/man7/operator.7
index f22dc5d17..2e4b92b9f 100644
--- a/man7/operator.7
+++ b/man7/operator.7
@@ -37,18 +37,22 @@
 .\"
 .\" 2007-12-08, mtk, Converted from mdoc to man macros
 .\"
+.\" 2019-09-30, Updated for 2 changes, and 1 addition
+.\"   Rick Stanley <rstanley@rsiny.com>
 .TH OPERATOR 7 2011-09-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
 operator \- C operator precedence and order of evaluation
 .SH DESCRIPTION
 This manual page lists C operators and their precedence in evaluation.
+Updated through the C18 C Standard
 .PP
 .TS
 lb lb lb
 l l l.
 Operator	Associativity	Notes
 () [] \-> . ++ \-\-	left to right	[1]
-! ~ ++ \-\- + \- (type) * & sizeof	right to left	[2]
+! ~ ++ \-\- + \- * & _Alignof sizeof	right to left	[2]
+(type)	right to left
 * / %	left to right
 + \-	left to right
 << >>	left to right

-- 
RSI (Rick Stanley, Inc.)
(917) 822-7771
www.rsiny.com
Computer Systems Consulting
Linux & Open Source Specialists

