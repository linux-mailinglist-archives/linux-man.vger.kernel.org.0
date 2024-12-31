Return-Path: <linux-man+bounces-2178-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 386709FEF23
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 12:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E3B0188121B
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 11:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19FB8191F68;
	Tue, 31 Dec 2024 11:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAScMPeq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41EA944E
	for <linux-man@vger.kernel.org>; Tue, 31 Dec 2024 11:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735645780; cv=none; b=f1DdyuiUpXZe58AJ24VopgY5AP6+LbtgwIyvzGoQz1hNHLw6L7qj9q4umk8skhEIVBCeyHrcvfNPq0Ql5Fu3lZZGzR+Fy0oaF1AR9CKUCn0I3XEC6B8FO4gk0GEnbd8FtaC68FycR5TnbZ04EifXwMwM2bT6O8Q35a0DjrP5x9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735645780; c=relaxed/simple;
	bh=4UovlbCEKM+rgRWxBdxbZtVdaZHsK2YVxf8yr2FiYG0=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=acaqTiqPUj80ZP2A3o1QRrhB8lIgigHeOyt9FkAx8UL1EXzMR90rVmP83u9QY0kJt/MKmu5+ARDsq/fkMrQd6nqfP72bIIyl1u85VYuU07Ip6N4PNwJMJKYndolCjR7AOuf6rPRIpM7kDIP9K0IcQ4sZuqPwfZpwHoZLk54CeXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAScMPeq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4699FC4CEDE
	for <linux-man@vger.kernel.org>; Tue, 31 Dec 2024 11:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735645780;
	bh=4UovlbCEKM+rgRWxBdxbZtVdaZHsK2YVxf8yr2FiYG0=;
	h=From:To:Subject:Date:From;
	b=MAScMPeqKWw/PPmS8IjaC5XDePr6wMkzEAl3BEfT2+rriO6c00S4ObYL6RB2nbEnx
	 nu/X6X9ctYzjMS5rcuDJlNzgRMP7leiFvbejy2ZxkLmhQYDRjdjS0NWlIeRVnEA1xE
	 Kd58JYBgFpElZKCKWnL+yFQysaJjHy7PdMW3G6ZdzUpp/RJUdJIiX1+s8F29x8ou/M
	 s66RAbW3KR8TlkMPWUP3rf/lbFuHd4kjHwUr86wnC92zqBSltuErwXcmUsrR0do9aY
	 M0N2X8NsLAOYTQLgZLyt/9HNIJzK0a1LWQsN1VkQeCNplTog3dvhD0qnfNbXlzSHWy
	 sUJguEN3Y8G1w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 3A1EDC4160E; Tue, 31 Dec 2024 11:49:40 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219645] New: Huawei Matebook E Go, whose codename is Gaokun
Date: Tue, 31 Dec 2024 11:49:39 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: mitltlatltl@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression attachments.created
Message-ID: <bug-219645-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

https://bugzilla.kernel.org/show_bug.cgi?id=3D219645

            Bug ID: 219645
           Summary: Huawei Matebook E Go, whose codename is Gaokun
           Product: Documentation
           Version: unspecified
          Hardware: ARM
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: mitltlatltl@gmail.com
        Regression: No

Created attachment 307428
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D307428&action=3Dedit
GaoKun Gen3 motherboard photographed by Tianyu Gao <gty0622@gmail.com>

In this entry, we provide some evidence regarding why the codename of the
Huawei Matebook E Go is Gaokun. Furthermore, the Qualcomm Snapdragon
sc8280xp-based model is called GaoKun Gen3, or simply Gaokun3. We also
speculate that the Qualcomm Snapdragon sc8180x-based model is called GaoKun
Gen2, or just Gaokun2.

We can confirm that 'Gaokun' is the codename for the Huawei Matebook E Go,
according to this link[1].

Based on the motherboard picture (see the attachment, credit to Tianyu Gao
<gty0622@gmail.com>), we can infer that the Qualcomm Snapdragon sc8280xp-ba=
sed
model is called GaoKun Gen3."

In the Windows driver files (not attached for copyright reasons), we can fi=
nd
the strings 'GaoKunGen2' and 'GaoKunGen3'. Since they were released
simultaneously, we speculate that the Qualcomm Snapdragon sc8180x-based mod=
el
is called GaoKun Gen2.

[1]
https://web.archive.org/web/20241231114747/https://consumer.huawei.com/en/s=
upport/content/en-us15945089/

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

