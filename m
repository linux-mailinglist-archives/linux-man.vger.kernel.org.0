Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54BED3D8C19
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 12:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234181AbhG1KpH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 06:45:07 -0400
Received: from mout.kundenserver.de ([217.72.192.75]:48955 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232736AbhG1KpF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 06:45:05 -0400
Received: from weisslap.aisec.fraunhofer.de ([178.27.102.95]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MybX9-1n76jx0Wp3-00yuNu; Wed, 28 Jul 2021 12:45:00 +0200
From:   =?UTF-8?q?Michael=20Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Michael=20Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
Subject: [PATCH] namespaces.7: ffix
Date:   Wed, 28 Jul 2021 12:44:29 +0200
Message-Id: <20210728104429.17744-1-michael.weiss@aisec.fraunhofer.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:5wSZu1nxEqjDJ+C6sy1suy8CEFfffFlKC3rqA3L63sy99zhs8rQ
 HZg40/SADwfiEaMWDB31XSYrT7DMKc+kP5L7VeYbwFUukaB/EUcLfF5aZ17qQu9jDiu5dN9
 f/9nfTy045TI/R0pOtrvj2KhTWITTOuc2uHCpUrZoLu93locK7E/RPHLzx/028qBhKc2Qc5
 uWAbabCZ+F+VkdXakxN0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Gf78YCaO6DM=:eC2MrsMh1MM6WkxETO4+8Y
 ZtsHLOlrAKhGEHDfbu4tITe0B16y6HirJkqw+iqxMsUTeQdAzmfTh21jHxWJCtM/4WPQlVrQh
 9kspdkTEuipWKLgmxaiXaUrIqtm1/NNdej+GhT23OJj9vwj4RjYpCOoxlzTNmUzMwHsNW7b6P
 w++xJXaLyU2D6Ima2AlmRTlpWcdPgNIi/qZ5/KaefoKWtTdpvIO5LxfhkiCXKVm9oult+np8a
 xKfSnnIxfyEW2Ior5tWtaYPozga1IRVe32X/meDYcE3u+2nb2INAsPvUA2fhYBAKAk6ybakux
 TPOaoIzYji+rtBj6tD1HR4pmKyEmhhSIc6q4le5DY3Vw7Sg09BTu8P5lsigddTtPDerppKjLu
 ha6kJYr2OSfIxwiU4dWwbrbWPmzqEZR0WDItocDx/APxWKSKI0HkmxYb8DwQGdJL//T8iYCwb
 qNYGQ8qtV/Yt8mdWfCVGTLZgtqnGYiny9vqjkUln+ZvcbzBHTDTuq6sGDuU43gWP+Fn+L9GvQ
 dz1wsny2LhQsvlMmlbzk3Swrnx6DpEH8KWkQPf8X4sl94MbI55rFyqPV1IKo/eK8ImsLijIzZ
 CcyPP3tCvq67v/R9DOxjx6hmlWlZ7yINh0SHsakIbvsyu3m5E2is5970FepBtPvIkIymdDNeA
 HM4Hb4iP/Mrb9Roy9Pccdwa2mvPBABbddrPICEAJlPntTPNl+b/5baFx52f7QSGO3U71IURH0
 Rm/HDVPmdsOLC4x+q1kqafMaQgpJJP0Syv1ZlDzZAdUBKqGDpAApYSywXvhs3rGDkNZo8cM0E
 UPa7VKJ/mmhZiPZYjYrTryLHt71HXetCtsfqGTx5QmRCaqBvORed4QefMz2BJpv988VXKdz/V
 2sN4BBY8RSAsfp/5dpWg==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
---
 man7/namespaces.7 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man7/namespaces.7 b/man7/namespaces.7
index d35c2d383..73c85c1ef 100644
--- a/man7/namespaces.7
+++ b/man7/namespaces.7
@@ -71,7 +71,8 @@ Time	CLONE_NEWTIME	\fBtime_namespaces\fP(7)	T{
 Boot and monotonic
 clocks
 T}
-User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{User and group IDs
+User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{
+User and group IDs
 T}
 UTS	CLONE_NEWUTS	\fButs_namespaces\fP(7)	T{
 Hostname and NIS
-- 
2.20.1

