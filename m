Return-Path: <linux-man+bounces-1774-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E49974837
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2024 04:30:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1601D1C257F7
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2024 02:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CB922092;
	Wed, 11 Sep 2024 02:30:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from r9221.ps.combzmail.jp (r9221.ps.combzmail.jp [160.16.65.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83EEAAD51
	for <linux-man@vger.kernel.org>; Wed, 11 Sep 2024 02:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.65.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726021823; cv=none; b=fVzbM3itl9EWag40CxGk4LvWZkrx2tqbnpDpcqohzuiAo0KE01+Ca88dCP19Js36Hnm1NVWw6reatweIOfU0FlqYcamEQ0NNrQmDjPSiCXDOoE8caYiEQzoiVxYfCkLG0Q7WNyJZheni3wag1HgMnCdfzStKKDMMVQmMFWZYQoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726021823; c=relaxed/simple;
	bh=VDpcUYVwLJXzHwKvZxazlpgAmb6AiDAyK7XHmGGOiC0=;
	h=To:From:Subject:Mime-Version:Content-Type:Message-Id:Date; b=aSuGxk8Ti5/cff6E50XXZcKQ7eZcOesxDjjLu1GX+EsHqJJAie/zuxUSlpsHJ9/XB6+qldMU/JLdJ4/LRdPFjh5x2AE/3l2UtFW+emRrsemxFEaJgd4VtQyRx6o/4wYkM697aafM6zDYgC/qcpSCxJSBxJEHSQrJC7O1vehJGRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fc-seminar.jp; spf=pass smtp.mailfrom=magerr.combzmail.jp; arc=none smtp.client-ip=160.16.65.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fc-seminar.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=magerr.combzmail.jp
Received: by r9221.ps.combzmail.jp (Postfix, from userid 99)
	id 63032E5152; Wed, 11 Sep 2024 11:15:17 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9221.ps.combzmail.jp 63032E5152
To: linux-man@vger.kernel.org
From: =?ISO-2022-JP?B?GyRCNjUwaTt2NkgbKEI=?= =?ISO-2022-JP?B?GyRCQGIbKEI=?=
 =?ISO-2022-JP?B?GyRCTEAycRsoQg==?= <info@fc-seminar.jp>
X-Ip: 3167301689629368
X-Ip-source: k85gj7ra48dnsa5pu0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCJDMkSSRiJE4lVyVtJTAlaSVfJXMlMCEiGyhC?=
 =?ISO-2022-JP?B?GyRCNjUwaTt2NkgbKEIgRkMbJEJAYkxAMnEbKEI=?=
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
X-MagazineId: ra5p
X-uId: 6762304939485865644259211048
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20240911021902.63032E5152@r9221.ps.combzmail.jp>
Date: Wed, 11 Sep 2024 11:15:17 +0900 (JST)

$B$$$D$b$*@$OC$K$J$j$^$9!#(B


$BF|K\$N>-Mh$rC4$&!"$3$I$b$N650i$K$?$:$5$o$k%U%i%s%A%c%$%:;v6H$N(B
$B2CLA%Q!<%H%J!<$rJg=8$9$k%*%s%i%$%s@bL@2q$r$40FFb?=$7>e$2$^$9!#(B


$B6H3&L$7P83!&<R0w(B1$BL>$G%9%?!<%H$,$G$-!"<B:]$K%*!<%J!<MM$N(B
9$B3d0J>e$O0[6H<o$+$i?75,;2F~$5$l$F$$$^$9!#(B


$B?75,;v6H$r$*9M$($NJ}$O$3$N5!2q$K@'Hs$4;22C$/$@$5$$$^$;!#(B


$B!!(B9$B7n(B24$BF|!J2P!K!!(B14:00$B!A(B15:00$B!!%*%s%i%$%s3+:E(B
----------------------------------------------------------


$B!!!!!!!!!!!!!!!!IT67$K6/$$!V650i;v6H!W(B
$B!!!!!!!!!!!!(B $B?75,;2F~(B $B%*%s%i%$%s%;%_%J!<(B

$B!!!!!!!!!!(B $B!A>/;R2=$G$3$=!"@.D9$9$kM}M3!A(B

$B!!!!!!!!!!!!!!!!!!"'(B  $B>\:Y!&?=9~(B  $B"'(B
$B!!!!!!!!!!!!(B https://wam-edu-fc.jp/wam2/

$B!!(B  $B!!!!!!!!!!!!!!"!!!$40FFb;v6H!!"!(B
$B!!!!!!%W%m%0%i%_%s%0650i!u8DJL;XF33X=,=N(B WAM$B!J%o%`!K(B

$B!!!!!!!!!!!!!!!!!!!~!!!!(B $BDs6!(B $B!!!!!~(B
$B!!!!!!!!!!!!!!(B  $B%(%$%A!&%(%`!&%0%k!<%W(B


----------------------------------------------------------

$B!X>/;R2=$J$N$K!"650i;v6H!)!Y$H;W$&$+$b$7$l$^$;$s$,!"(B
$B<B$O;R$I$b0l?M$K$+$1$k650iHq$NA}2C$KH<$$!";T>l$O@.D9$7B3$1$F$$$^$9!#(B


$B$^$?!"650iHq$OIT67;~$G$b:o8:$5$l$K$/$$$?$a(B
$B%3%m%J2<$G$bBg$-$/Mn$A9~$`$3$H$J$/Dl7x$5$r8+$;$^$7$?!#(B


$BMD;y650iL5=~2=$J$I$N9q:v$b$"$j!":#8e$b650iEj;q$NA}2C$,M=A[$5$l$^$9!#(B


$B$=$3$G$4>R2p$9$k$N$,!"!V%W%m%0%i%_%s%0!_8DJL;XF3!W$N%O%$%V%j%C%I650i;v6H$G$9!#(B


$B%W%m%0%i%_%s%0$O>.3X9;$GI,=$2=$5$l$?$?$a!"J]8n<T$N4X?4$b9b$^$C$F$$$^$9!#(B


$BK\;v6H$N%9%?!<%H$O6H3&L$7P83!&<R0w#1L>$G2DG=$G$9!#(B


$B?7$?$J;v6H<}1W$E$/$j$r$*9M$($NJ}$O!"@'Hs$4;22C$/$@$5$$!#(B


$B!!(B9$B7n(B24$BF|!J2P!K!!(B14:00$B!A(B15:00$B!!%*%s%i%$%s3+:E(B
$B!!"'(B  $B>\:Y!&?=9~(B  $B"'(B
$B!!(Bhttps://wam-edu-fc.jp/wam2/


$B(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(B
$B!!650i;v6H(BFC$B%;%_%J!<;vL36I(B
$B!!EEOC!'(B0120-891-893
$B!!=;=j!'El5~ETCf1{6h6d:B(B7-13-6
$B!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=(B
$B!!K\%a!<%k$N$4ITMW$JJ}$K$OBgJQ$4LBOG$r$*$+$1$$$?$7$^$7$?!#(B
$B!!:#8e$40FFb$,ITMW$JJ}$O2<5-(BURL$B$h$j$*<jB3$-$r$*4j$$$$$?$7$^$9!#(B
$B!!(1!!(Bhttps://wam-edu-fc.jp/mail/
$B!!$^$?$O7oL>$K!VG[?.ITMW!W$H5-:\$7$FK\%a!<%k$K$=$N$^$^(B
$B!!JV?.$7$F$$$?$@$/$3$H$G$b>5$C$F$*$j$^$9!#(B
$B(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(B

